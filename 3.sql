set serveroutput on
create or replace procedure report_monthly_sale(
	prod_id in products.pid%type) as
begin
	for aRow in (select 
				products.pname, 
				to_char(purchases.ptime, 'MM') as month,
				to_char(purchases.ptime, 'YYYY') as year,
				sum(purchases.qty) as qty,
				sum(purchases.total_price) as dollar
			from products inner join purchases
				on purchases.pid = products.pid
			where prod_id = products.pid
			group by 
				to_char(purchases.ptime, 'MM'),
				to_char(purchases.ptime, 'YYYY'),
				products.pname,
				purchases.qty,
				purchases.total_price)
		loop
			dbms_output.put_line(aRow.pname);
			dbms_output.put_line(aRow.month);
			dbms_output.put_line(aRow.year);
			dbms_output.put_line(aRow.qty);
			dbms_output.put_line(aRow.dollar);
			dbms_output.put_line(aRow.dollar/aRow.qty);
		end loop;
end;
/
