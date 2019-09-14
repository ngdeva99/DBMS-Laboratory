SQL> create table emp1(Empno number(2),Name varchar2(20),Designation varchar2(20
  2  
SQL> create table emp1(Empno number(2),Name varchar2(20),Designation varchar2(20),Deptno number(2),Dname varchar2(20),DOJ DATE,Salary number(6));

Table created.

SQL> desc emp1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                              NUMBER(2)
 NAME                                               VARCHAR2(20)
 DESIGNATION                                        VARCHAR2(20)
 DEPTNO                                             NUMBER(2)
 DNAME                                              VARCHAR2(20)
 DOJ                                                DATE
 SALARY                                             NUMBER(6)

SQL> ed ex3.sql

SQL> insert into emp1 values(1,'A','Manager',1,'HR',to_date('12/01/2016', 'DD/MM/YYYY'),150000);

1 row created.

SQL> select * from emp1;

     EMPNO NAME                 DESIGNATION              DEPTNO                 
---------- -------------------- -------------------- ----------                 
DNAME                DOJ           SALARY                                       
-------------------- --------- ----------                                       
         1 A                    Manager                       1                 
HR                   12-JAN-16     150000                                       
                                                                                

SQL> insert into emp1 values(2,'B','Asst.Manager',1,'HR',to_date('02/10/2009', 'DD/MM/YYYY'),100000);

1 row created.

SQL> delete from emp1 where name='B';

1 row deleted.

SQL> select * from emp1;

     EMPNO NAME                 DESIGNATION              DEPTNO                 
---------- -------------------- -------------------- ----------                 
DNAME                DOJ           SALARY                                       
-------------------- --------- ----------                                       
         1 A                    Manager                       1                 
HR                   12-JAN-16     150000                                       
                                                                                

SQL>   INSERT INTO EMP1
  2     VALUES(7369,'DHANWIN','MANAGER',30,'CSE',date'1976-02-02',2550);
   VALUES(7369,'DHANWIN','MANAGER',30,'CSE',date'1976-02-02',2550)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2      VALUES(7521,'ARJUN','ANALYST',20,'IT',date'1981-06-22',1850);
    VALUES(7521,'ARJUN','ANALYST',20,'IT',date'1981-06-22',1850)
           *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2     VALUES(1369,'VIJAY','CEO',50,'EEE',date'2000-06-07',3950);
   VALUES(1369,'VIJAY','CEO',50,'EEE',date'2000-06-07',3950)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL> INSERT INTO EMP1
  2     VALUES(2369,'KALIMBA','ANALYST',10,'ECE',date'1990-03-03',1450);
   VALUES(2369,'KALIMBA','ANALYST',10,'ECE',date'1990-03-03',1450)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL> INSERT INTO EMP1
  2     VALUES(3369,'BOHRA','CLERK',40,'BME',date'1982-05-07',1700);
   VALUES(3369,'BOHRA','CLERK',40,'BME',date'1982-05-07',1700)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2     VALUES(4369,'KONAN','ANALYST',10,'ECE',date'1996-05-08',450);
   VALUES(4369,'KONAN','ANALYST',10,'ECE',date'1996-05-08',450)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2     VALUES(5369,'MIKEY','CLERK',20,'CSE',date'1995-05-08',1850);
   VALUES(5369,'MIKEY','CLERK',20,'CSE',date'1995-05-08',1850)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2      VALUES(6369,'ANDRE','ANALYST','','CIVIL',date'1994-05-08',2550);
    VALUES(6369,'ANDRE','ANALYST','','CIVIL',date'1994-05-08',2550)
           *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2     VALUES(8369,'SARAH','SALESMAN',10,'ECE',date'1993-05-08',750);
   VALUES(8369,'SARAH','SALESMAN',10,'ECE',date'1993-05-08',750)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL> INSERT INTO EMP1
  2     VALUES(9369,'DRAVID','ANALYST',50,'EEE',date'1992-05-08',450);
   VALUES(9369,'DRAVID','ANALYST',50,'EEE',date'1992-05-08',450)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>   INSERT INTO EMP1
  2     VALUES(7369,'DHANWIN','MANAGER',30,'CSE',to_date('02/02/1976', 'DD/MM/YYYY'),2550);
   VALUES(7369,'DHANWIN','MANAGER',30,'CSE',to_date('02/02/1976', 'DD/MM/YYYY'),2550)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2      VALUES(7521,'ARJUN','ANALYST',20,'IT',to_date('22/06/1981','DD/MM/YYYY'),1850);
    VALUES(7521,'ARJUN','ANALYST',20,'IT',to_date('22/06/1981','DD/MM/YYYY'),1850)
           *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2     VALUES(1369,'VIJAY','CEO',50,'EEE',to_date('07/06/2000','DD/MM/YYYY'),3950);
   VALUES(1369,'VIJAY','CEO',50,'EEE',to_date('07/06/2000','DD/MM/YYYY'),3950)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL> INSERT INTO EMP1
  2     VALUES(2369,'KALIMBA','ANALYST',10,'ECE',to_date('03/03/1990','DD/MM/YYYY'),1450);
   VALUES(2369,'KALIMBA','ANALYST',10,'ECE',to_date('03/03/1990','DD/MM/YYYY'),1450)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL> INSERT INTO EMP1
  2     VALUES(3369,'BOHRA','CLERK',40,'BME',to_date('07/05/1982','DD/MM/YYYY'),1700);
   VALUES(3369,'BOHRA','CLERK',40,'BME',to_date('07/05/1982','DD/MM/YYYY'),1700)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2     VALUES(4369,'KONAN','ANALYST',10,'ECE',to_date('08/05/1996','DD/MM/YYYY'),450);
   VALUES(4369,'KONAN','ANALYST',10,'ECE',to_date('08/05/1996','DD/MM/YYYY'),450)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2     VALUES(5369,'MIKEY','CLERK',20,'CSE',to_date('09/05/1995','DD/MM/YYYY'),1850);
   VALUES(5369,'MIKEY','CLERK',20,'CSE',to_date('09/05/1995','DD/MM/YYYY'),1850)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2      VALUES(6369,'ANDRE','ANALYST','60','CIVIL',to_date('11/05/1994','DD/MM/YYYY'),2550);
    VALUES(6369,'ANDRE','ANALYST','60','CIVIL',to_date('11/05/1994','DD/MM/YYYY'),2550)
           *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL>  INSERT INTO EMP1
  2     VALUES(8369,'SARAH','SALESMAN',10,'ECE',to_date('02/05/1993','DD/MM/YYYY'),750);
   VALUES(8369,'SARAH','SALESMAN',10,'ECE',to_date('02/05/1993','DD/MM/YYYY'),750)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL> INSERT INTO EMP1
  2     VALUES(9369,'DRAVID','ANALYST',50,'EEE',to_date('12/05/1991','DD/MM/YYYY'),450);
   VALUES(9369,'DRAVID','ANALYST',50,'EEE',to_date('12/05/1991','DD/MM/YYYY'),450)
          *
ERROR at line 2:
ORA-01438: value larger than specified precision allowed for this column 


SQL> ALTER TABLE EMP1 MODIFY EMPNO NUMBER(4);

Table altered.

SQL> DESC EMP1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                              NUMBER(4)
 NAME                                               VARCHAR2(20)
 DESIGNATION                                        VARCHAR2(20)
 DEPTNO                                             NUMBER(2)
 DNAME                                              VARCHAR2(20)
 DOJ                                                DATE
 SALARY                                             NUMBER(6)

SQL>   INSERT INTO EMP1
  2     VALUES(7369,'DHANWIN','MANAGER',30,'CSE',to_date('02/02/1976', 'DD/MM/YYYY'),2550);

1 row created.

SQL>  INSERT INTO EMP1
  2      VALUES(7521,'ARJUN','ANALYST',20,'IT',to_date('22/06/1981','DD/MM/YYYY'),1850);

1 row created.

SQL>  INSERT INTO EMP1
  2     VALUES(1369,'VIJAY','CEO',50,'EEE',to_date('07/06/2000','DD/MM/YYYY'),3950);

1 row created.

SQL> INSERT INTO EMP1
  2     VALUES(2369,'KALIMBA','ANALYST',10,'ECE',to_date('03/03/1990','DD/MM/YYYY'),1450);

1 row created.

SQL> INSERT INTO EMP1
  2     VALUES(3369,'BOHRA','CLERK',40,'BME',to_date('07/05/1982','DD/MM/YYYY'),1700);

1 row created.

SQL>  INSERT INTO EMP1
  2     VALUES(4369,'KONAN','ANALYST',10,'ECE',to_date('08/05/1996','DD/MM/YYYY'),450);

1 row created.

SQL>  INSERT INTO EMP1
  2     VALUES(5369,'MIKEY','CLERK',20,'CSE',to_date('09/05/1995','DD/MM/YYYY'),1850);

1 row created.

SQL>  INSERT INTO EMP1
  2      VALUES(6369,'ANDRE','ANALYST','60','CIVIL',to_date('11/05/1994','DD/MM/YYYY'),2550);

1 row created.

SQL>  INSERT INTO EMP1
  2     VALUES(8369,'SARAH','SALESMAN',10,'ECE',to_date('02/05/1993','DD/MM/YYYY'),750);

1 row created.

SQL> INSERT INTO EMP1
  2     VALUES(9369,'DRAVID','ANALYST',50,'EEE',to_date('12/05/1991','DD/MM/YYYY'),450);

1 row created.

SQL> SELECT NAME FROM EMP1;

NAME                                                                            
--------------------                                                            
A                                                                               
DHANWIN                                                                         
ARJUN                                                                           
VIJAY                                                                           
KALIMBA                                                                         
BOHRA                                                                           
KONAN                                                                           
MIKEY                                                                           
ANDRE                                                                           
SARAH                                                                           
DRAVID                                                                          

11 rows selected.

SQL> DELETE FROM EMP1 WHERE NAME='A';

1 row deleted.

SQL> SELECT NAME FROM EMP1;

NAME                                                                            
--------------------                                                            
DHANWIN                                                                         
ARJUN                                                                           
VIJAY                                                                           
KALIMBA                                                                         
BOHRA                                                                           
KONAN                                                                           
MIKEY                                                                           
ANDRE                                                                           
SARAH                                                                           
DRAVID                                                                          

10 rows selected.

SQL> UPDATE EMP1 SET NAME='DEVA'WHERE EMPNO=7369;

1 row updated.

SQL> SELECT NAME FROM EMP1;

NAME                                                                            
--------------------                                                            
DEVA                                                                            
ARJUN                                                                           
VIJAY                                                                           
KALIMBA                                                                         
BOHRA                                                                           
KONAN                                                                           
MIKEY                                                                           
ANDRE                                                                           
SARAH                                                                           
DRAVID                                                                          

10 rows selected.

SQL> SPOOL OFF;
