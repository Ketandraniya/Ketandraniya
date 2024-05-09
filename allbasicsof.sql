For creating database
CREATE DATABASE -------database name;

#####for creating table
CREATE TABLE -------table name (
 id int PRIMARY KEY,
 name VARCHAR(50),
 age INT NOT NULL 
);

###for insert data in table
insert into -------tablename values(1, 'AMAN', 26);
insert into -------table name values(2, 'SHARADHA', 24);

###to check data is insert on table or not
SELECT ------column name, column name FROM ------table name;
                                  OR
SELECT *FROM ---------table name;


For create database but if you have already create any database by the same name
So it will show you warning that by the of this (*****) already a data exists
CREATE DATABASE IF NOT EXISTS -------- databasename;

For drop database you have to use when the database in exists 
DROP DATABASE IF EXISTS --------database name;

For multiple values 
INSERT INTO ---------tablename
(rollno, name)
VALUES
(101, 'karan'),
(102, 'arjun'),
(103, 'ram');

For single value you have to add in pre added table in same order you don't have 
To mention column names
INSERT INTO --------table name VALUES (104,'shyam');

This will help to merge two tables column in one table
Ex* u have a table which have a column cust id and you are creating a new table and u have to add in your new table that column cust id then will use this 

 (cust_id) jo new column bnayege woh hoga FOREIGN KEY MAI
Reference customer(id) jisse hum help leke new column bna rahe hai woh hoga
CREATE TABLE table name(
 cust id int,
 FOREIGN KEY (cust_id) references customer(id)	
);

Ap koi table bna rhe hai usme apne INT DEFAULT ka use kia koi row mai ya column mai
Toh jo value ap markdown kroge just like (25000) agr koi column ya row by default empty hoga toh woh value jo apne markdown ki hai woh apne aa a jyegi wha p (25000)

CREATE TABLE -------table name(
 id INT,
Salary INT DEFAULT 25000);

INSERT INTO emp(id)  VALUES (101);
 toh iske bd jb ap isko run kroge toh salary wala row by default 25000 se filled hoga 


DISTINCT is use for jha p apko repeated values nahi chaiye hoti hain
DISTINCT
EX:- SELECT DISTINCT ---------column name
FROM -------table name;


WHERE CLAUSE
CLAUS jha p apko koi condition apply karni hoti hai
SELECT * FROM ----table name WHERE conditions;

EX
SELECT * 
FROM student 
WHERE marks > 80;

WHERE CLAUSE

OPERATORS
SELECT * FROM -----table name WHERE -------column jo bhi apko select karna hai AND column jo bhi apko select karna hai;
AND jha p bhi use hoga who both side ki conditions ko follow krega 

EX :-   SELECT * FROM student WHERE marks > 80 AND city = 'pune';


SELECT * FROM -----table name WHERE -------column jo bhi apko select karna hai OR column jo bhi apko select karna hai;
OR jha p use krege who 2no conditions mai se koi 1 bhi follow kregi toh execute ho jyega 

EX :-  SELECT * FROM student WHERE marks > 80 OR city = 'pune';


BETWEEN 
 between wha p use krege jha p humko 1 range k andar kuch select karna ho

SELECT * FROM --------table name WHERE -------- jo column apko select karna hai woh BETWEEN 80 AND 90;

EX :-  SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

IN   yeah unko check karega jo column name sapne select kia h usme woh hai jo apne select kia h ya nahi
SELECT * FROM -------table name WHERE column jo bhi apko select karna hai IN ('column name','column name');
EX :-  SELECT * FROM student WHERE city IN ('delhi','mumbai'); 

NOT yeah esa data nikalega jo apne column select kia h unse different ho
SELECT * FROM -------table name WHERE column jo bhi apko select karna hai NOT IN ('column name','column name');
EX :-  SELECT * FROM student WHERE city NOT IN ('delhi','mumbai');


LIMIT  KA USE HUM TAB KARTE H JB APKO LIMITED DATA HI DEKHNA HO PURA DATA NA DEKHNA HO JAISE APKO 3 
TOH YEAH APKO STARTING K 3 STUDENTS KA HI DATA SHOW KREGA AP ISKO INCREASE YA DECREASE BHI KAR SAKTE HAI
SELECT * FROM --------table name LIMIT 3;
EX :- SELECT * FROM student LIMIT 3;
                            OR
                FOR CONDITION CASE
EX :-  SELECT * FROM student WHERE marks  > 75 LIMIT 3;


ORDER BY Clause
(ACS) FOR ASCENDING OR (DESC) FOR DESCENDING
SELECT * FROM -------table name jo column ap select karege who ACS OR DESC
EX:- SELECT  * FROM student ORDER BY marks ACS;



AGGREGATE FUNCTIONS
Yeah use hote hai jaise ki apko COUNT, MAX, MIN, SUM, AVG, kuch bhi niklna hai kisi column ya row ka uske liye
 SELECT * max(-----column name) FROM -------table name;  
EX:- SELECT * max(marks) FROM student;





Group By Clause iska use hum multiple columns or data k liye karte hai jaise apne 1 table ka 1 column select
 kia jiska name tha city then ap apni table name likhoge then ap aggregate function use kroge according to apki
 Requirement  then ap usko GROUP BY kroge apne column k according ap isme apne according multiple column
Use kar sakte hai its all upto you

SELECT city, count(-----column name)
FROM student
GROUP BY city,
          OR
SELECT city
FROM student
GROUP BY city,
ORDER BY city;
         OR
SELECT city,name, count(rollno)
FROM student
GROUP BY city,name;
ORDER BY count(rollno);


ORDER BY avg(marks); always accending order m hoga but if u need in decending order then you have to write it
ORDER BY avg(marks) DESC; it will show data in decending order 


PRACTICE 

CREATE TABLE payment(
Customer_id INT PRIMARY KEY,
Customer VARCHAR(50),
Mode VARCHAR(50),
City VARCHAR(50)
);

EXECUTE THIS CODE TABLE WILL BE CREATED AND REFRESH THE TABLE WILL SHOWN ON SIDE
AFTER THIS YOU HAVE TO ADD DATA AND COLUMN INTO TABLE

INSERT INTO payment
(customer_id, customer, mode, city)
VALUES
(101,'Aman','Netbanking','Noida'),
(102,'Rahul','Debit card','Greater Noida'),
(103,'Akhil','Netbanking','Haridwar'),
(104,'Ketan','Credit card','Lucknow');
 
WHEN YOU ADD ALL DATA YOUL CAN EXECUTE THIS CODE YOUR DATA WILL BE ADD ON TABLE (PAYMENT)


IF YOU HAVE TO APPLY ANY CONDITION YOU WILL ADD AFTER ADDITION OF DATA

SELECT mode, count(customer)
FROM payment
GROUP BY mode
ORDER BY mode;

AFTER THAT YOU HAVE TO EXECUTE THE CODE AND IT WILL APPLY ON YOUR DATA SET 


 
THIS WILL SHOW YOU TABLE WHAT YOU HAVE DONE WITH ALL CODES AND HOW YOUR TABLE WILL SEE
SELECT * FROM payment 




HAVING CLAUSE WHA P USE HOTE HAI JAISE APNE KAAFI SARE GROUPS BNA DIYE OR USKE UPAR APKO CONDITION 
LAGANI HAI SO WAHA PAI HUM HAVING CLAUSE KA USE KARTE HAI

SELECT ---------column , --------aggregates(---column name)
FROM ------table name
GROUP BY------same column name jo apne SELECT mai fill kia hai
HAVING max(------column name); jo condtion apply hui h uske according



THERE IS GENERAL ORDER TO WRITE CLAUSE

SELECT column(s)
FROM ---------table name
WHERE condition       (WHERE CONDITION LAGAYEGA APNI SAARI ROWS K UPAR)
GROUP BY column(s) (COLUMNS K UPAR CONDITION LAGAYEGA HAVING)
HAVING condition
ORDER BY column(s) ASC; (ASC IS USED FOR ASCENDING ORDER , DESC IS USED FOR DESCENDING ORDER)




TABLE RELATED QUERIES  iska use hum existing data mai ROWS  update karna ho uske liye karte hai
Update (to update existing rows)

UPDATE --------table name
SET ------column name = 'values ' (jo value change kar k likhni hai usko yha p likhege)
WHERE ------column name = 'value'; (yha p who value likhege jo apki table mai pehle se exist krti hai)

EX:- UPDATE student
SET grade = '0'
WHERE grade ='A';

SET SQL_SAFE_UPDATES=0;  (THIS COMAND IS USE FOR TO OFF SAFE MODE IN SQL)




DELETE (TO DELETE EXISTING ROWS)

Iska use hum existing data mai rows data ko del karne k liye karege
DELETE FROM -------table name WHERE --------column /rows name condtion
EX:-  DELETE FROM student WHERE marks < 33;





 Revisiting FK yeah connection show karta hai ki 1 table dusri table ki trf ja rahi hai foreign key ki help se
                         jis table humari orginal primary key thi woh hogi parent yani jis table se hum data ko use karre hai dusri     
                         table k liye or jo table k liye use kr rhe hai woh hogi child table

CREATE TABLE ---------table name(
    id INT PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE -------- table name(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	dept_id INT,
	FOREIGN KEY (-----table name) REFERENCES dept(------table name jiska apne reference lia hai woh yani jis table                                       
	                                                                                                                                                              mai data ja raha woh )
);

EX:-
CREATE TABLE dept(
    id INT PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE teacher(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	dept_id INT,
	FOREIGN KEY (dept_id) REFERENCES dept(id)
);



Cascading for Foreign key  cascading is use for jab ap 1 table mai koi change kre toh uske sath dusri table mai apne ap change ho jye jo bhi uss sai linked hai ya connect hai 1 dusre sai



Ex:- 
CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(50),
mode VARCHAR(50),
city VARCHAR(50)
);


CREATE TABLE dept(
    id INT PRIMARY KEY,
	name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101,'english'),        (JO DATA AP NAI APNE DATABASE MAI INSERT KIA WOH HAI)
(102,'IT');

SELECT * FROM dept     (TO CHECK YOUR DATA IS IN CORRECT FORM THE WAY YOU WANT)

UPDATE dept
SET id =111          (JO DATA APKO UPDATE KARNA HAI APNE DATABASE WOH HAI)
WHERE id =101;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	dept_id INT,
	FOREIGN KEY (dept_id) REFERENCES dept(id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

INSERT INTO teacher
VALUES                               (JO DATA AP NAI APNE DATABASE MAI INSERT KIA WOH HAI)
(101,'Adam',101),
(102,'Eve',102);

SELECT * FROM teacher  (TO CHECK YOUR DATA IS IN CORRECT FORM THE WAY YOU WANT)





TABLE RELATED QUERIES

ADD
ALTER TABLE -----------table name
ADD COLUMN --------column name -------type of column (int,varchar,etc)

EX:-  ALTER TABLE student
        ADD COLUMN age INT NOT NULL DEFAULT 19;

DROP
FOR DROP THE PROCESS WILL BE SAME BAS APKO ADD COLUMN KI JAGHA DROP COLUMN USE KARNA HAI IN DROP
METHOD YOU DON’T NEED TO WRITE WHAT TYPE OF COLUMN DATA IS 

ALTER TABLE -----------table name
DROP COLUMN --------column name 

EX:-  ALTER TABLE student
        DROP COLUMN stu_age;

REANAME
SAME ESE HI RENAME TABLE K LIYE HOGA 
ALTER TABLE -----------table name
RENAME TO --------NEW TABLE NAME;

EX:-  ALTER TABLE student
        RENAME TO  stu; 


CHANGE
CHANGE COLUMN MAI AP KOI BHI COLUMN NAME CHANGE KR SAKTE HAI
ALTER TABLE -----------table name
CHANGE COLUMN --------OLD_NAME NEW_NAME_DATATYPE NEW_CONSTRAINT;

EX:-  ALTER TABLE student
        CHANGE age stu_age INT;


MODIFIY
MODIFY COLUMN USE HOTA HAI TO MODIFY DATATYPE/CONSTRAINT

ALTER TABLE---------TABLE NAME
MODIFY----------COLUMN NAME NEW_DATATYPE NEW_CONSTRAINT;

ALTER TABLE STUDENT
MODIFY age VARCHAR(2);



DROP HOTA HAI PURI TABLE KO DELETE KARNE KAI LIYE 
TRUNCATE HOTA ONLY TABLE K ANDAR JO APKA DATA HAI USKE DELETE KARNE KAI LIYE TABLE APKI AS A TIES RAHEGI




TABLE REALTED QUERIES
TRUNCATE (to delete table's data)

TRUNCATE TABLE ---------table name;

EX:- UPDATE STUDENT
        SET grade = '0'
        WHERE grade ='A';







JOINS IN SQL
Join is used to combine a rows from two or more tables,based on a related column between them.
Iska use hum tab karege jab hum 2 table ko 1 sath join kr rhe ho or 2no table ka kuch common hona chaiye 2no table mai column row kch bhi




Types of joins               ALIAS hum use karte hai jaise table k bade bade name hote h unke badle kuch chota name de sakte ho jaise ex SALARY ON EFFICIENCY BASE as S THAT MEANS SALARY WALA JO TABLE NAME HAI UNKO PURA NA LIKH K HUM SIRF S LIKH SAKTE HAIN


INNER JOINS  

SELECT column(s)
FROM ----------name of tableA
INNER JOIN ----------- name of tableB
ON ------table A.col name = table B.col name;


EX:- SELECT *
        FROM student 
        INNER JOIN course
        ON student.id = course.id;



LEFT JOIN 
Yeah left side mai jo table hogi uska sab data lega or right m jo table hogi uska wahi data lega jo left wali table k sath 
Overlap kar raha hoga 


SELECT column(s)
FROM -------table name(A)
LEFT ---------- table name(B)
ON ------table A.col_name = table B.col_name;

EX:- SELECT * 
        FROM student as s
        LEFT course as c
        ON s.id = c.id;


RIGHT JOIN
Yeah bilkul left join k opposite kaam karta hai isme right side wali table ka sab data ayega but left side wali table ka wahi data ayega 
Jo right side wali table se overlap kar rha ho

SELECT column(s)
FROM -------table name(A)
RIGHT ---------- table name(B)
ON ------table A.col_name = table B.col_name;

EX:- SELECT * 
        FROM student as s
        RIGHT course as c
        ON s.id = c.id;



FULL JOIN  left data (table) or right data (table) ka complete data use krege yha p


SELECT column(s)
FROM -------table name(A)
LEFT ---------- table name(B)
ON ------table A.col_name = table B.col_name;
UNION
SELECT column(s)
FROM -------table name(A) 
RIGHT ---------- table name(B)
ON ------table A.col_name = table B.col_name;


EX:-
SELECT *
FROM student_new as s
LEFT JOIN course as b                (as ka use humne table name ko short karne k liye kia hai)
ON s.id = c.id;
UNION
SELECT *
FROM student_new as s            (as ka use humne table name ko short karne k liye kia hai)
RIGHT JOIN course as b
ON s.id = c.id;












Think & Ans

LEFT EXCLUSIVE JOIN   iska use hum waha p karte hai jaha p humko 1 hi table ka data use karna ho nahi overlap wala cahiye nahi dusri table ka
                                         LEFT EXCLUSIVE MAI SIRF LEFT table ka data lega
SELECT column(s)
FROM -------table name(A)
LEFT ---------- table name(B)
ON ------table A.col_name = table B.col_name;
WHERE -------table name (jiska data apko add nahi karna hai) IS NULL;


EX:-
SELECT *
FROM student_new as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL;


RIGHT EXCLUSIVE JOIN   iska use hum waha p karte hai jaha p humko 1 hi table ka data use karna ho nahi overlap wala cahiye nahi dusri table ka
                                             RIGHT EXCLUSIVE MAI  sirf right side ka data lega left ka nahi 
                            
SELECT column(s)
FROM -------table name(A)
RIGHT---------- table name(B)
ON ------table A.col_name = table B.col_name;
WHERE -------table name (jiska data apko add nahi karna hai) IS NULL;

EX:-
SELECT *
FROM student_new as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL;




FULL EXCLUSIVE JOIN   iska use hum waha p karte hai jaha p humko 2no table ka data chaiye but overlap wala data nahi chaiye waha p

SELECT *
FROM table1
FULL OUTER JOIN table2 ON table1.id = table2.id
WHERE table1.id IS NULL OR table2.id IS NULL;



SELF JOIN iska use hum waha p karte hai jaha p humko 1 table ko  dusri table k sath connect karna hai 
                 

SELECT *
FROM -------table name as a
JOIN ----------table name as b
ON a.column_name = b.column_name;

EX:- 
SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id, = b.manager_id;        









UNION kuch es tarha se kaam karta hai table A ka sab elements lege or table B k sab elements lega or dono ko combine krege toh combine karne k baad duplicates haat jyege bas unique values hamare pas result m ayegi  

SELECT------------- column name FROM -------table name
UNION
SELECT ------------column name FROM --------table name;

EX:-  SELECT name FROM employee
         UNION 
         SELECT name FROM employee;

UNION ALL  yeah apko sabhi values dega duplicates bhi or jo table A or table B m hogi woh bhi 

SELECT------------- column name FROM -------table name
UNION ALL
SELECT ------------column name FROM --------table name;

EX:-  SELECT name FROM employee
         UNION ALL
         SELECT name FROM employee;



SQL Sub Queries  isme hum Queries k andar sub Queries likhte hai yeah apne ap update hoti rahegi in future agar table mai koi data change                  
                                hota hai toh automatically change ho jyegi

SELECT ----------column name, ------------- column name (b)
FROM ------------- table name
WHERE ---------column name(b) -----------jo bhi apko operator use karna hai;


1 EX:-  SELECT name, marks
         FROM student
         WHERE marks > (SELECT AVG(marks)
         FROM student);

2 EX:- SELECT name, roll no
        FROM student
        WHERE roll no IN (
                SELECT roll no
                FROM student 
                WHERE roll no % 2 = 0);


FROM main AS ka use krna padega for new give a new name to table 
3 EX:- SELECT MAX(marks)
           FROM (SELECT * FROM student WHERE city = 'Delhi') AS temp;
                                               OR
                  EASY WAY YOU CAN ALSO USE THIS

            SELECT MAX(marks)
            FROM student
            WHERE city = 'Delhi';
 










MYSQL VIEWS   









