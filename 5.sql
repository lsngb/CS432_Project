set serveroutput on

create or replace trigger insert_pur_tuple
after insert on purchases
for each row
begin
	insert into logs values(log_seq.nextval, user, sysdate, 'purchases', 'insert', pur_seq.currval);
end;
/

create or replace trigger update_p_qoh
after update of qoh on products
for each row
begin
	insert into logs values(log_seq.nextval, user, sysdate, 'products', 'update', :old.pid);
end;
/

create or replace trigger update_c_visits
after update of visits_made on customers
for each row
begin
	insert into logs values(log_seq.nextval, user, sysdate, 'customers', 'update', :old.cid);
end;
/

create or replace trigger insert_s_tuple
after insert on supply
for each row
begin
	insert into logs values(log_seq.nextval, user, sysdate, 'supply', 'insert', sup_seq.currval);
end;
/
