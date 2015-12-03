set serveroutput on
create or replace procedure add_purchase(e_id purchases.eid%type, p_id purchases.pid%type, c_id purchases.cid%type, pur_qty purchases.qty%type) is 
	v_original_price products.original_price%type;
	v_discnt_rate products.discnt_rate%type;
begin 
select original_price, discnt_rate into v_original_price, v_discnt_rate from products where pid = p_id;
INSERT INTO purchases(pur#, eid, pid, cid, qty, ptime, total_price) 
VALUES (0, e_id, p_id, c_id, pur_qty, sysdate, v_original_price*(1 - v_discnt_rate)*pur_qty);
end;
/

create or replace procedure add_products(
	v_pid products.pid%type,
	v_pname products.pname%type, 
	v_qoh products.qoh%type, 
	v_qoh_threshold products.qoh_threshold%type,
	v_original_price products.original_price%type,
	v_discnt_rate products.discnt_rate%type
	) is 
begin
insert into products(pid, pname, qoh, qoh_threshold, original_price, discnt_rate)
VALUES (v_pid, v_pname, v_qoh, v_qoh_threshold, v_original_price, v_discnt_rate);
end;
/
show errors