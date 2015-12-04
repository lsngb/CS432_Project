insert into employees values ('e01', 'Peter', '666-555-1234');
insert into employees values ('e02', 'David', '777-555-2341');
insert into employees values ('e03', 'Susan', '888-555-3412');
insert into employees values ('e04', 'Anne', '666-555-4123');
insert into employees values ('e05', 'Mike', '444-555-4231');

insert into customers values ('c001', 'Kathy', '666-555-4567', 3, '12-OCT-15');
insert into customers values ('c002', 'John', '888-555-7456', 1, '08-OCT-15');
insert into customers values ('c003', 'Chris', '666-555-6745', 3, '18-SEP-15');
insert into customers values ('c004', 'Mike', '999-555-5674', 1, '20-OCT-15');
insert into customers values ('c005', 'Mike', '777-555-4657', 2, '30-AUG-15');
insert into customers values ('c006', 'Connie', '777-555-7654', 2, '16-OCT-15');
insert into customers values ('c007', 'Katie', '888-555-6574', 1, '12-OCT-15');
insert into customers values ('c008', 'Joe', '666-555-5746', 1, '18-OCT-15');

insert into products values ('p001', 'stapler', 60, 20, 9.99, 0.1);
insert into products values ('p002', 'TV', 6, 5, 249, 0.15);
insert into products values ('p003', 'camera', 20, 5, 148, 0.2);
insert into products values ('p004', 'pencil', 100, 10, 0.99, 0.0);
insert into products values ('p005', 'chair', 10, 8, 12.98, 0.3);
insert into products values ('p006', 'lamp', 10, 6, 19.95, 0.1);
insert into products values ('p007', 'tablet', 50, 10, 149, 0.2);
insert into products values ('p008', 'computer', 5, 3, 499, 0.3);
insert into products values ('p009', 'powerbank', 20, 5, 49.95, 0.1);

insert into purchases values (0, 'e01', 'p002', 'c001', 1, to_date('12-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 211.65);
insert into purchases values (0, 'e01', 'p003', 'c001', 1, to_date('20-SEP-2015 11:23:36', 'DD-MON-YYYY HH24:MI:SS'), 118.40);
insert into purchases values (0, 'e02', 'p004', 'c002', 5, to_date('08-OCT-2015 09:30:50', 'DD-MON-YYYY HH24:MI:SS'), 4.95);
insert into purchases values (0, 'e01', 'p005', 'c003', 2, to_date('23-AUG-2015 16:23:35', 'DD-MON-YYYY HH24:MI:SS'), 18.17);
insert into purchases values (0, 'e04', 'p007', 'c004', 1, to_date('20-OCT-2015 13:38:55', 'DD-MON-YYYY HH24:MI:SS'), 119.20);
insert into purchases values (0, 'e03', 'p008', 'c001', 1, to_date('12-OCT-2015 15:22:10', 'DD-MON-YYYY HH24:MI:SS'), 349.30);
insert into purchases values (0, 'e03', 'p006', 'c003', 2, to_date('10-SEP-2015 17:12:20', 'DD-MON-YYYY HH24:MI:SS'), 35.91);
insert into purchases values (0, 'e03', 'p006', 'c005', 1, to_date('16-AUG-2015 12:22:15', 'DD-MON-YYYY HH24:MI:SS'), 17.96);
insert into purchases values (0, 'e03', 'p001', 'c007', 1, to_date('12-OCT-2015 14:44:23', 'DD-MON-YYYY HH24:MI:SS'), 8.99);
insert into purchases values (0, 'e04', 'p002', 'c006', 1, to_date('19-SEP-2015 17:32:37', 'DD-MON-YYYY HH24:MI:SS'), 211.65);
insert into purchases values (0, 'e02', 'p004', 'c006', 10, to_date('16-OCT-2015 16:54:40', 'DD-MON-YYYY HH24:MI:SS'), 9.90);
insert into purchases values (0, 'e02', 'p008', 'c003', 2, to_date('18-SEP-2015 15:56:38', 'DD-MON-YYYY HH24:MI:SS'), 698.60);
insert into purchases values (0, 'e04', 'p006', 'c005', 2, to_date('30-AUG-2015 10:38:25', 'DD-MON-YYYY HH24:MI:SS'), 35.91);
insert into purchases values (0, 'e03', 'p009', 'c008', 3, to_date('18-OCT-2015 10:54:06', 'DD-MON-YYYY HH24:MI:SS'), 134.84);

insert into suppliers values('s1', 'A', 'New York', '333-444-5555');
insert into suppliers values('s2', 'B', 'Vestal', '333-444-6666');
insert into suppliers values('s3', 'C', 'Binghamton', '666-444-5555');
insert into suppliers values('s4', 'D', 'Queens', '333-222-5555');
insert into suppliers values('s5', 'E', 'New York', '777-444-5555');
insert into suppliers values('s6', 'F', 'Binghamton', '666-777-5555');

insert into supply values (0, 'p001', 's1', to_date('12-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);
insert into supply values (0, 'p002', 's2', to_date('19-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);
insert into supply values (0, 'p003', 's3', to_date('19-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);
insert into supply values (0, 'p004', 's4', to_date('19-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);
insert into supply values (0, 'p005', 's5', to_date('12-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);
insert into supply values (0, 'p006', 's6', to_date('19-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);
insert into supply values (0, 'p007', 's1', to_date('19-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);
insert into supply values (0, 'p008', 's2', to_date('19-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);
insert into supply values (0, 'p009', 's3', to_date('19-AUG-2015 10:34:30', 'DD-MON-YYYY HH24:MI:SS'), 20);