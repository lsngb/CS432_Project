create or replace package refcursor_jdbc as
	type ref_cursor is ref cursor;
function showemployees
return ref_cursor;

function showcustomers
return ref_cursor;

function showproducts
return ref_cursor;

function showpurchases
return ref_cursor;

function showsuppliers
return ref_cursor;

function showsupply
return ref_cursor;

end;

/
show errors;

create or replace package body refcursor_jdbc as
	function showemployees
	return ref_cursor as
	rc ref_cursor;
	begin
	/* Open a ref cursor for a given query */
	open rc for
	select * from employees;
	return rc;
	end;

	function showcustomers
	return ref_cursor as
	rc ref_cursor;
	begin
	/* Open a ref cursor for a given query */
	open rc for
	select * from customers;
	return rc;
	end;

	function showproducts
	return ref_cursor as
	rc ref_cursor;
	begin
	/* Open a ref cursor for a given query */
	open rc for
	select * from products;
	return rc;
	end;

	function showpurchases
	return ref_cursor as
	rc ref_cursor;
	begin
	/* Open a ref cursor for a given query */
	open rc for
	select * from purchases;
	return rc;
	end;

	function showsuppliers
	return ref_cursor as
	rc ref_cursor;
	begin
	/* Open a ref cursor for a given query */
	open rc for
	select * from suppliers;
	return rc;
	end;

	function showsupply
	return ref_cursor as
	rc ref_cursor;
	begin
	/* Open a ref cursor for a given query */
	open rc for
	select * from supply;
	return rc;
	end;
	
end;
/
show errors