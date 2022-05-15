-- ----------------------------------------------------------------------------------------------------------------------
-- 1. Insert data into PERSON
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO PERSON(PID, fname, minitial, lname, street, city, state, zip, DoB, gender)
VALUES('P001', 'Omar', '', 'Bonucci', '13406 vfosfibnfsobfsin St', 'Dallas', 'TX', 75230, '1980-05-22', 'M');
INSERT INTO PERSON(PID, fname, minitial, lname, street, city, state, zip, DoB, gender)
VALUES('P002', 'Alex', 'N', 'Malanana', '13406 vfosfibnfsobfsin St', 'Dallas', 'TX', 75230, '1999-02-12', 'F');
INSERT INTO PERSON(PID, fname, minitial, lname, street, city, state, zip, DoB, gender)
VALUES('P003', 'Salah', 'O', 'Oppo', '13406 vfosfibnfsobfsin St', 'Dallas', 'TX', 75230, '2001-01-11', 'F');
INSERT INTO PERSON(PID, fname, minitial, lname, street, city, state, zip, DoB, gender)
VALUES('P004', 'Bon', 'a', 'Jovi', '13406 vfosfibnfsobfsin St', 'Dallas', 'TX', 75230, '1986-03-03', 'M');
INSERT INTO PERSON(PID, fname, minitial, lname, street, city, state, zip, DoB, gender)
VALUES('P005', 'Che', '', 'Blank', '13406 vfosfibnfsobfsin St', 'Dallas', 'TX', 75230, '1997-09-09', 'M');
INSERT INTO PERSON(PID, fname, minitial, lname, street, city, state, zip, DoB, gender)
VALUES('P006', 'Charith', 'R', 'Muppidi', '13406 vfosfibnfsobfsin St', 'Dallas', 'TX', 75230, '1997-09-09', 'M');
INSERT INTO PERSON(PID, fname, minitial, lname, street, city, state, zip, DoB, gender)
VALUES('P007', 'Andy', '', 'Burke', '13406 vfosfibnfsobfsin St', 'Dallas', 'TX', 75230, '1997-09-09', 'M');
INSERT INTO PERSON(PID, fname, minitial, lname, street, city, state, zip, DoB, gender)
VALUES('P008', 'Jay', '', 'Kumar', '13406 vfosfibnfsobfsin St', 'Dallas', 'TX', 75230, '1995-02-28', 'M');


-- ----------------------------------------------------------------------------------------------------------------------
-- 2. Insert data into CONTACT
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO CONTACT(PID, phone_number)
VALUES('P005', '1234567890');
INSERT INTO CONTACT(PID, phone_number)
VALUES('P005', '5603217676');
INSERT INTO CONTACT(PID, phone_number)
VALUES('P004', '0003541297');
INSERT INTO CONTACT(PID, phone_number)
VALUES('P004', '3691263300');

-- ----------------------------------------------------------------------------------------------------------------------
-- 3. Insert data into BOOK
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO BOOK(b_title, book_type)
VALUES('Mock book 1', "class 1");
INSERT INTO BOOK(b_title, book_type)
VALUES('google map book', "class 1");
INSERT INTO BOOK(b_title, book_type)
VALUES('cooking like a pro', "class 1");
INSERT INTO BOOK(b_title, book_type)
VALUES('Nerd coding book', "class 1");
INSERT INTO BOOK(b_title, book_type)
VALUES('How to get muscles', "class 1");
INSERT INTO BOOK(b_title, book_type)
VALUES('C++ book', "class 1");
INSERT INTO BOOK(b_title, book_type)
VALUES('Senior HTML Dev book', "class 1");
INSERT INTO BOOK(b_title, book_type)
VALUES('Hacker and Artist', "class 2");
INSERT INTO BOOK(b_title, book_type)
VALUES('MIPS is bad', "class 2");
INSERT INTO BOOK(b_title, book_type)
VALUES('Tom and Tom 2', "class 2");
INSERT INTO BOOK(b_title, book_type)
VALUES('ABC Book', "class 2");

-- ----------------------------------------------------------------------------------------------------------------------
-- 4. Insert data into EMPLOYEE
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO EMPLOYEE(EID, start_date, employee_type)
VALUES ('P003', '2000-01-01', 'Receptionist');
INSERT INTO EMPLOYEE(EID, start_date, employee_type)
VALUES ('P004', '2000-01-01', 'Catalog Manager');
INSERT INTO EMPLOYEE(EID, start_date, employee_type)
VALUES ('P005', '2022-04-01', 'Library Supervisor');
INSERT INTO EMPLOYEE(EID, start_date, employee_type)
VALUES ('P006', '2022-05-01', 'Library Supervisor');

-- ----------------------------------------------------------------------------------------------------------------------
-- 5. Insert data into PAYMENT
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO PAYMENT(p_amount, p_method, p_time)
VALUES(30.54, 'Visa Credit', '2022-01-13');
INSERT INTO PAYMENT(p_amount, p_method, p_time)
VALUES(400, 'BofA Debit', '2020-02-10');
INSERT INTO PAYMENT(p_amount, p_method, p_time)
VALUES(20, 'Chase Credit', '2019-11-10');
INSERT INTO PAYMENT(p_amount, p_method, p_time)
VALUES(5, 'Chase Debit', '2000-02-01');
INSERT INTO PAYMENT(p_amount, p_method, p_time)
VALUES(15, 'Apple Pay', '2000-02-11');
INSERT INTO PAYMENT(p_amount, p_method, p_time)
VALUES(25, 'Apple Pay iphone', '2000-02-21');
INSERT INTO PAYMENT(p_amount, p_method, p_time)
VALUES(120, 'Cash', '2000-02-22');

-- ----------------------------------------------------------------------------------------------------------------------
-- 6. Insert data into AUTHOR
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO AUTHOR(A_name)
VALUES('Jane Austin');
INSERT INTO AUTHOR(A_name)
VALUES('Pony Veratti');
INSERT INTO AUTHOR(A_name)
VALUES('Rock Hunks');
INSERT INTO AUTHOR(A_name)
VALUES('Sasha N Lewandowski');
INSERT INTO AUTHOR(A_name)
VALUES('Marco D Polo');
INSERT INTO AUTHOR(A_name)
VALUES('Shu O Ningye');

-- ----------------------------------------------------------------------------------------------------------------------
-- 7. Insert data into MEMBER
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO MEMBER(CID, DoI, mem_level)
VALUES('P001', '2001-11-11', "Gold");
INSERT INTO MEMBER(CID, DoI, mem_level)
VALUES('P002', '2001-11-11', "Silver");
INSERT INTO MEMBER(CID, DoI, mem_level)
VALUES('P003', '2001-11-11', "Gold");
INSERT INTO MEMBER(CID, DoI, mem_level)
VALUES('P004', '2001-11-11', "Silver");
INSERT INTO MEMBER(CID, DoI, mem_level)
VALUES('P005', '2001-11-11', "Gold");
INSERT INTO MEMBER(CID, DoI, mem_level)
VALUES('P006', '2001-11-11', "Gold");
INSERT INTO MEMBER(CID, DoI, mem_level)
VALUES('P007', '2001-11-11', "Gold");
INSERT INTO MEMBER(CID, DoI, mem_level)
VALUES('P008', '2001-11-11', "Gold");

-- ----------------------------------------------------------------------------------------------------------------------
-- 8. Insert data into GUEST_LOG
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO GUEST_LOG(CID, GID, guest_address, guest_name, contact_info)
VALUES('P005',  'P010', 'djvdpobnsfbin tx dallas', 'Adam Guesto', '555-444-1111');
INSERT INTO GUEST_LOG(CID, GID, guest_address, guest_name, contact_info)
VALUES('P005', 'P011', NULL, 'Xavi Alonso', NULL);
INSERT INTO GUEST_LOG(CID, GID, guest_address, guest_name, contact_info)
VALUES('P005', 'P012', NULL, 'pop gurad', NULL);
INSERT INTO GUEST_LOG(CID, GID, guest_address, guest_name, contact_info)
VALUES('P005', 'P013', NULL, 'Rahim gejus', NULL);
INSERT INTO GUEST_LOG(CID, GID, guest_address, guest_name, contact_info)
VALUES('P005', 'P012', NULL, 'Xavi Alonso', NULL);
INSERT INTO GUEST_LOG(CID, GID, guest_address, guest_name, contact_info)
VALUES('P005', 'P012', NULL, 'Xavi Alonso', NULL);
INSERT INTO GUEST_LOG(CID, GID, guest_address, guest_name, contact_info)
VALUES('P005', 'P012', NULL, 'Xavi Alonso', NULL);

-- ----------------------------------------------------------------------------------------------------------------------
-- 9. Insert data into PUBLISHER
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO PUBLISHER(Pub_name)
VALUES("Penguin Random House");
INSERT INTO PUBLISHER(Pub_name)
VALUES("Hachette Livre");
INSERT INTO PUBLISHER(Pub_name)
VALUES("HarperCollins");
INSERT INTO PUBLISHER(Pub_name)
VALUES("Simon");

-- ----------------------------------------------------------------------------------------------------------------------
-- 10. Insert data into PUBLISH_BY
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(1, 1);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(2, 2);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(3, 3);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(4, 4);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(5, 1);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(6, 2);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(7, 3);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(8, 4);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(9, 1);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(10, 2);
INSERT INTO PUBLISH_BY(BID, PubID)
VALUES(11, 3);

-- ----------------------------------------------------------------------------------------------------------------------
-- 11. Insert data into WRITTEN_BY
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO WRITTEN_BY(BID, AID)
VALUES(1, 1);
INSERT INTO WRITTEN_BY(BID, AID)
VALUES(2, 1);
INSERT INTO WRITTEN_BY(BID, AID)
VALUES(3, 2);
INSERT INTO WRITTEN_BY(BID, AID)
VALUES(4, 2);
INSERT INTO WRITTEN_BY(BID, AID)
VALUES(5, 3);
INSERT INTO WRITTEN_BY(BID, AID)
VALUES(6, 4);
INSERT INTO WRITTEN_BY(BID, AID)
VALUES(7, 5);
INSERT INTO WRITTEN_BY(BID, AID)
VALUES(8, 6);

-- ----------------------------------------------------------------------------------------------------------------------
-- 12. Insert data into BORROW
-- ----------------------------------------------------------------------------------------------------------------------
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-03-01', '2022-05-01', 'P005', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-02-01', '2022-05-01', 'P005', 'P003', 2);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-01-01', '2022-05-01', 'P005', 'P003', 3);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-05-01', '2022-05-01', 'P005', 'P003', 4);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-04-01', '2022-05-01', 'P005', 'P003', 5);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-03-01', '2022-05-01', 'P005', 'P003', 6);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (2, '2021-03-01', '2022-05-01', 'P005', 'P003', 6);

INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-05-01', '2022-05-07', 'P004', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-04-01', '2022-05-07', 'P004', 'P003', 2);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-03-01', '2022-05-07', 'P004', 'P003', 3);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-02-01', '2022-05-07', 'P004', 'P003', 4);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-01-01', '2022-05-07', 'P004', 'P003', 5);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-12-01', '2022-05-07', 'P004', 'P003', 6);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-11-01', '2022-05-07', 'P004', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-10-01', '2022-05-07', 'P004', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-09-01', '2022-05-07', 'P004', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-08-01', '2022-05-07', 'P004', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-07-01', '2022-05-07', 'P004', 'P003', 5);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-06-01', '2022-05-07', 'P004', 'P003', 6);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-05-01', '2022-05-07', 'P004', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-04-01', '2022-05-07', 'P004', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-05-01', '2022-05-07', 'P004', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (2, '2022-05-01', '2022-05-07', 'P004', 'P003', 2);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (3, '2022-05-01', '2022-05-07', 'P004', 'P003', 3);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (4, '2022-05-01', '2022-05-07', 'P004', 'P003', 4);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (5, '2021-05-01', '2022-05-07', 'P004', 'P003', 5);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (6, '2021-05-01', '2022-05-07', 'P004', 'P003', 6);

INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-03-01', '2022-05-01', 'P001', 'P003', 1);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (2, '2022-02-01', '2022-05-01', 'P003', 'P003', 2);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (3, '2022-01-01', '2022-05-01', 'P006', 'P003', 3);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (4, '2021-05-01', '2022-05-01', 'P006', 'P003', 4);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (5, '2021-04-01', '2022-05-01', 'P007', 'P003', 5);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (6, '2021-03-01', '2022-05-01', 'P007', 'P003', 6);

INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2021-03-01', '2022-05-01', 'P008', 'P003', 6);

INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (1, '2022-05-01', '2022-05-15', 'P001', 'P003', 6);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (2, '2022-05-01', '2022-05-15', 'P001', 'P003', 6);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (3, '2022-05-01', '2022-05-15', 'P001', 'P003', 6);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (4, '2022-05-01', '2022-05-15', 'P001', 'P003', 6);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (5, '2022-05-01', '2022-05-15', 'P001', 'P003', 6);
INSERT INTO BORROW(BID,borrow_date,return_date, PID, EID, PayID)
VALUES (6, '2022-05-01', '2022-05-15', 'P001', 'P003', 6);