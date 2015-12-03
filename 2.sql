set serveroutput on

create or replace procedure show_employees(key number DEFAULT NULL) is 
begin
DBMS_OUTPUT.PUT_LINE('eid, ename, telephone#; ');
 FOR aRow IN (SELECT * FROM employees)
   LOOP
     DBMS_OUTPUT.PUT_LINE(aRow.eid || ', ' || aRow.ename || ', ' || aRow.telephone# || '; ');
   END LOOP;
end;
/

create or replace procedure show_customers(key number DEFAULT NULL) is 
begin
DBMS_OUTPUT.PUT_LINE('cid, cname, telephone#, visits_made, last_visit_date; ');
 FOR aRow IN (SELECT * FROM customers)
   LOOP
     DBMS_OUTPUT.PUT_LINE(aRow.cid || ', ' || aRow.cname || ', ' || aRow.telephone# || ', ' || aRow.visits_made || ', ' || aRow.last_visit_date || '; ');
   END LOOP;
end;
/

create or replace procedure show_products(key number DEFAULT NULL) is 
begin
DBMS_OUTPUT.PUT_LINE('pid, pname, qoh, qoh_threshold, original_price, discnt_rate; ');
 FOR aRow IN (SELECT * FROM products)
   LOOP
     DBMS_OUTPUT.PUT_LINE(aRow.pid || ', ' || aRow.pname || ', ' || aRow.qoh || ', ' || aRow.qoh_threshold || ', ' || aRow.original_price || ', ' || aRow.discnt_rate || '; ');
   END LOOP;
end;
/

create or replace procedure show_purchases(key number DEFAULT NULL) is 
begin
DBMS_OUTPUT.PUT_LINE('pur#, eid, pid, cid, qty, ptime, total_price; ');
 FOR aRow IN (SELECT * FROM purchases)
   LOOP
     DBMS_OUTPUT.PUT_LINE(aRow.pur# || ', ' || aRow.eid || ', ' || aRow.pid || ', ' || aRow.cid || ', ' || aRow.qty || ', ' || aRow.ptime || ', ' || aRow.total_price || '; ');
   END LOOP;
end;
/

create or replace procedure show_suppliers(key number DEFAULT NULL) is 
begin
DBMS_OUTPUT.PUT_LINE('sid, sname, city, telephone#; ');
 FOR aRow IN (SELECT * FROM suppliers)
   LOOP
     DBMS_OUTPUT.PUT_LINE(aRow.sid || ', ' || aRow.sname || ', ' || aRow.city || ', ' || aRow.telephone# || '; ');
   END LOOP;
end;
/

create or replace procedure show_supply(key number DEFAULT NULL) is 
begin
DBMS_OUTPUT.PUT_LINE('sup#, pid, sid, sdate, quantity; ');
 FOR aRow IN (SELECT * FROM supply)
   LOOP
     DBMS_OUTPUT.PUT_LINE(aRow.sup# || ', ' || aRow.pid || ', ' || aRow.sid || ', ' || aRow.sdate || ', ' || aRow.quantity || '; ');
   END LOOP;
end;
/


show errors