-- ----------------------------------------------------------------------------------------------------------------------
-- d. Use the Create View statement to create the following views:
-- ----------------------------------------------------------------------------------------------------------------------
-- 1. TopGoldMember - This view returns the First Name, Last Name and Date of membership enrollment of those members who have borrowed more than 5 books in past month.
CREATE VIEW TopGoldMember AS
SELECT
    P.PID, P.fname, P.minitial, P.lname, M.DoI, COUNT(BR.BID) as num_borrowed
FROM
    BORROW BR, PERSON P, MEMBER M
WHERE
    BR.PID = M.CID AND M.CID = P.PID AND DATE_ADD(SYSDATE(), INTERVAL -1 MONTH) < BR.borrow_date AND M.mem_level = 'Gold'
GROUP BY (BR.PID)
HAVING num_borrowed > 5;

-- 2. PopularBooks - This view returns the details of the most borrowed books over the past year.
CREATE VIEW PopularBooks AS
SELECT B.BID, B.b_title, COUNT(BR.BID) as times_borrowed
FROM BOOK B, BORROW BR
WHERE B.BID = BR.BID
GROUP BY (BR.BID)
ORDER BY times_borrowed DESC
LIMIT 1;


-- 3. PotentialGoldMember - This view returns the name, phone number and ID of the silver members who borrowed books in every month in the past year.
CREATE VIEW PotentialGoldMember AS
select M.CID as 'Member_ID', P.fname as 'First_Name', P.lname as 'Last_Name', C.phone_number as 'Phone_Number'
from CONTACT C, PERSON P
inner join MEMBER M on P.PID = M.CID
inner join BORROW BR on M.CID = BR.PID
where M.mem_level = 'Silver' AND C.PID = P.PID
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -1 MONTH) and borrow_date < SYSDATE() group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -2 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -1 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -3 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -2 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -4 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -3 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -5 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -4 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -6 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -5 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -7 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -6 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -8 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -7 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -9 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -8 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -10 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -9 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -11 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -10 MONTH) group by (PID) having count(*) >= 1)
AND P.PID IN (select PID from BORROW where borrow_date >= DATE_ADD(SYSDATE(), INTERVAL -12 MONTH) and borrow_date < DATE_ADD(SYSDATE(), INTERVAL -11 MONTH) group by (PID) having count(*) >= 1)
Group by M.CID, C.phone_number;

-- 4. PopularAuthor – This view returns details of authors whose books have been borrowed the most.
CREATE VIEW PopularAuthor AS
with t as (
    select
        A.AID as 'Author_ID',
        A.A_name as "Author_Name",
        B.BID as 'Book_ID',
        B.b_title as "Book_Title",
        COUNT(*) as "Total_Number_of_Times_Borrowed"
    from AUTHOR A
    inner join WRITTEN_BY WB on A.AID = WB.AID
    inner join BOOK B on B.BID = WB.BID
    inner join BORROW BR on B.BID = BR.BID
    group by A.AID, B.BID
    order by COUNT(*) DESC
)
select *
from t as o
where Total_Number_of_Times_Borrowed = (select Max(Total_Number_of_Times_Borrowed) from t as i where i.Author_ID=o.Author_ID);

-- ----------------------------------------------------------------------------------------------------------------------
-- e. Show the SQL statement of the following Queries. Feel free to use any of the views that you created in part (d.):
-- ----------------------------------------------------------------------------------------------------------------------
-- 1. List the details of all the supervisors of the library hired in past two months.
SELECT
	E.EID, E.start_date, E.employee_type
FROM
	PERSON P, EMPLOYEE E
WHERE
	P.PID = E.EID AND E.employee_type = 'Library Supervisor' AND DATE_ADD(SYSDATE(), INTERVAL -2 MONTH) < E.start_date;

-- 2. Find the names of employees who are also a member and the books they have borrowed in the past month.
SELECT
	 CONCAT(P.fname, ' ', P.minitial, ' ', P.lname) as 'Name', B.b_title
FROM
	PERSON P, EMPLOYEE E, MEMBER M, BORROW BR, BOOK B
WHERE 
	E.EID = M.CID AND P.PID = E.EID AND BR.BID = B.BID AND DATE_ADD(SYSDATE(), INTERVAL -1 MONTH) < BR.borrow_date
ORDER BY Name;

-- 3. Find the average number of books borrowed by the top five gold members in the library.
with temp as (
	SELECT
		M.CID, COUNT(BR.BID) as books_borrow 
	FROM
		BORROW BR, MEMBER M
	WHERE
		BR.PID = M.CID AND M.mem_level = 'Gold'
	GROUP BY
		(M.CID)
	ORDER BY
		books_borrow DESC
	LIMIT 5
)
SELECT AVG(books_borrow) as 'Average number of books borrowed by the top five gold members' 
from temp;

-- 4. Find the name of publishers and the title of the most popular book for each publisher.
with t as (select
    P.PubID as 'Publisher_ID',
    P.Pub_name as 'Publisher_Name',
    B.BID as 'Book_ID',
    B.b_title as 'Book_Title',
    COUNT(*) as "Number_of_Borrowed"
from PUBLISHER P
inner join PUBLISH_BY PB on P.PubID = PB.PubID
inner join BOOK B on B.BID = PB.BID
inner join BORROW BR on B.BID = BR.BID
group by P.PubID, B.BID
)
select *
from t as o
where Number_of_Borrowed = (select Max(Number_of_Borrowed) from t as i where i.Publisher_ID = o.Publisher_ID);

-- 5. Find names of books that were not borrowed in the last 5 months.
SELECT
	B.b_title
FROM
	BOOK B, BORROW BR
WHERE
	B.BID = BR.BID AND DATE_ADD(SYSDATE(), INTERVAL -5 MONTH) > BR.borrow_date;
    
-- 6. Find the members who have borrowed all the books wrote by the most popular author.
with t as (
select P.PID, CONCAT(P.fname, ' ', P.minitial, ' ', P.lname) as 'Name', BR.BID
from PERSON P, MEMBER M, BORROW BR
where P.PID=M.CID and M.CID=BR.PID and BR.BID IN (
    select BID
    from WRITTEN_BY WB
    where WB.AID = (
        SELECT AUTHOR_ID
        FROM PopularAuthor
        WHERE Total_Number_of_Times_Borrowed = 
        (
            SELECT MAX(Total_Number_of_Times_Borrowed) 
            FROM PopularAuthor
        )
    )
)
Group by P.PID, BR.BID
)
select Name, COUNT(*) as c
from t
group by(PID)
Having c = (
    select COUNT(*) as i
    from WRITTEN_BY WB
    where WB.AID = (
        SELECT AUTHOR_ID
        FROM PopularAuthor
        WHERE Total_Number_of_Times_Borrowed = (
			SELECT MAX(Total_Number_of_Times_Borrowed) 
            FROM PopularAuthor
        )
    )
group by(WB.AID));


-- 7. Find the Gold Member with the most number of guests.
SELECT
	M.CID, COUNT(GL.GID)
FROM
	PERSON P, MEMBER M, GUEST_LOG GL
WHERE
	M.CID = P.PID AND M.CID = GL.CID AND M.mem_level = 'Gold' 
LIMIT 1;

-- 8. Find the year with the maximum number of books borrowed.
SELECT 
	EXTRACT(YEAR FROM BR.borrow_date) as 'year', COUNT(*) as '# of books borrowed' 
FROM
	BORROW BR
GROUP BY
	(year)
ORDER BY
	COUNT(*) DESC
LIMIT 1;

-- 9. Find the names of members who borrowed the most popular books.
SELECT DISTINCT
	P.fname, P.minitial, P.lname
FROM
	BORROW BR, PERSON P, MEMBER M, PopularBooks
WHERE
	M.CID = P.PID AND BR.BID = PopularBooks.BID;
    
-- 10. List all the employees that have enrolled into Gold membership within a month of being employed.
SELECT
    E.EID as 'Employee ID',
    CONCAT(P.fname, ' ', P.minitial, ' ', P.lname) as 'Name',
    E.start_date as 'Hire Date',
    M.DoI as 'Memebr Entrollment Date',
    M.mem_level as 'Member Type'
FROM
    PERSON P, EMPLOYEE E, MEMBER M
WHERE
    P.PID = E.EID AND
    E.EID = M.CID AND
    M.mem_level='Gold' AND
    E.start_date < M.DoI AND
    DATEDIFF(E.start_date, M.DoI) < 30;

-- 11. Find the name of members who have been a silver member for over 5 years.
SELECT
	P.fname, P.minitial, P.lname
FROM
	MEMBER M, PERSON P
WHERE
M.CID = P.PID AND M.mem_level='Silver'  AND DATE_ADD(SYSDATE(), INTERVAL -5 YEAR) > M.DoI;

-- 12. Find the names of the potential gold members and number of books they borrowed in the last year.
SELECT
	PotentialGoldMember.Member_ID, 
    PotentialGoldMember.First_Name, 
    PotentialGoldMember.Last_Name, 
    PotentialGoldMember.Phone_Number, 
    COUNT(BR.BID) 
FROM
	BORROW BR, BOOK B, PotentialGoldMember
WHERE
	BR.BID = B.BID AND DATE_ADD(SYSDATE(), INTERVAL -1 YEAR) < BR.borrow_date;
