set serveroutput on

-- Trigger to update product qoh after purchase is made
create or replace trigger qoh_after_purchase
after insert on purchases
for each row
declare
	v_qoh products.qoh%type;
	v_qoh_threshold products.qoh_threshold%type;
	v_sid supply.sid%type;
	min_qty number(5);
	M number(5);
	new_qty number(5);
	v_last_visit customers.last_visit_date%type;
	cursor c1 is
	select sid from supply
	where pid = :new.pid
	order by sid;
begin
	--Update product qoh after purchase
	update products set qoh = qoh - :new.qty
	where pid = :new.pid;
	--If qoh below threshold
	select qoh into v_qoh from products where pid = :new.pid;
	select qoh_threshold into v_qoh_threshold from products where pid = :new.pid;
	if(v_qoh < v_qoh_threshold) then
		--Tell user qoh is too low
		dbms_output.put_line('Qoh is below threshold');
		dbms_output.put_line('New supply is required');
		--Order supply for product
		open c1;
		fetch c1 into v_sid;
		close c1;
		M := v_qoh_threshold - v_qoh + 1;
		min_qty := 10 + M + v_qoh;
		insert into supply values(sup_seq.nextval, :new.pid, v_sid, sysdate, min_qty);
		--Increase qoh
		update products set qoh = qoh + min_qty
		where pid = :new.pid;
		--Print new qoh
		new_qty := min_qty + v_qoh;
		dbms_output.put_line('The new qoh is: ' || new_qty);
	end if;
	select last_visit_date into v_last_visit from customers where cid = :new.cid;
	update customers set visits_made = visits_made + 1
	where cid = :new.cid;
	--If purchase made on different date
	if(trunc(:new.ptime) != trunc(v_last_visit)) then
		update customers set last_visit_date = sysdate
		where cid = :new.cid;
	end if;
end;
/
