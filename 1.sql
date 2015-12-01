set serveroutput on
CREATE SEQUENCE pur_seq
START WITH 100001
INCREMENT BY 1;

create or replace trigger trig_pur
before insert on purchases
for each row

begin 
select pur_seq.NEXTVAL
into :new.pur#
from dual;

end;
/

CREATE SEQUENCE sup_seq
START WITH 1001
INCREMENT BY 1;

create or replace trigger trig_sup
before insert on supply
for each row

begin 
select sup_seq.NEXTVAL
into :new.sup#
from dual;

end;
/

CREATE SEQUENCE log_seq
START WITH 10001
INCREMENT BY 1;

create or replace trigger trig_log
before insert on logs
for each row

begin 
select log_seq.NEXTVAL
into :new.log#
from dual;

end;
/

