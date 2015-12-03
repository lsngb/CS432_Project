set serveroutput on
create or replace trigger trig_negative_qoh
before insert on purchases
for each row
declare 
	negative_qoh exception;
	v_qoh products.qoh%type;
begin
select qoh into v_qoh from products where pid = :new.pid;
if(v_qoh - :new.qty < 0) then raise negative_qoh;
end if;
exception
when negative_qoh then
raise_application_error(-20001,'Insufficient quantity in stock.');

end;
/

show errors