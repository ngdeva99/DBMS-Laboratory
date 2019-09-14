SQL> ed
SP2-0107: Nothing to save.
SQL> create table EMPLOYEE(
      EMPNO number(8),
         NAME varchar(2),
         DESIGNATION varchar(2),
         DEPTNO number(8),
         DEPTNAME varchar(2),
         DATEOFJOINING date,
         SALARY number(9)
     );
Table created.

SQL> desc EMPLOYEE
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                              NUMBER(8)
 NAME                                               VARCHAR2(2)
 DESIGNATION                                        VARCHAR2(2)
 DEPTNO                                             NUMBER(8)
 DEPTNAME                                           VARCHAR2(2)
 DATEOFJOINING                                      DATE
 SALARY                                             NUMBER(9)

SQL> MODIFY NAME varchar(10);
SP2-0734: unknown command beginning "MODIFY NAM..." - rest of line ignored.
SQL>  alter table EMPLOYEE
       MODIFY NAME varchar(10);

Table altered.

SQL> alter table EMPLOYEE
      MODIFY DESIGNATION varchar(15);

Table altered.

SQL> alter table EMPLOYEE
       MODIFY DEPTNAME varchar(10);

Table altered.

SQL>   INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
       VALUES(7369,'DEVANATHAN','MANAGER',30,'IT',date'1976-02-02',2750);

1 row created.

SQL>  INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2      VALUES(7521,'ARJUN','ANALYST',20,'CSE',date'1981-06-22',1750);

1 row created.

SQL>  INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2     VALUES(1369,'AJAY','CEO',50,'EEE',date'2000-06-07',3750);

1 row created.

SQL> INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2     VALUES(2369,'KALI','ANALYST',10,'ECE',date'1990-03-03',1550);

1 row created.

SQL> INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2     VALUES(3369,'BONES','CLERK',40,'BME',date'1982-05-07',1700);

1 row created.

SQL>  INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2     VALUES(4369,'KOHLI','ANALYST',10,'ECE',date'1996-05-08',500);

1 row created.

SQL>  INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2     VALUES(5369,'MIKE','CLERK',20,'CSE',date'1995-05-08',1750);

1 row created.

SQL>  INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2      VALUES(6369,'ANDREWS','ANALYST','','CIVIL',date'1994-05-08',2750);

1 row created.

SQL>  INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2     VALUES(8369,'SACHIN','SALESMAN',10,'ECE',date'1993-05-08',750);

1 row created.

SQL> INSERT INTO EMPLOYEE(EMPNO,NAME,DESIGNATION,DEPTNO,DEPTNAME,DATEOFJOINING,SALARY)
  2     VALUES(9369,'DHONI','ANALYST',50,'EEE',date'1992-05-08',500);

1 row created.

SQL> SELECT * FROM EMPLOYEE;

     EMPNO NAME       DESIGNATION         DEPTNO DEPTNAME   DATEOFJOI     SALARY
---------- ---------- --------------- ---------- ---------- --------- ----------
      7369 DEVANATHAN    MANAGER                 30 IT         02-FEB-76       2750
      7521 ARJUN      ANALYST                 20 CSE        22-JUN-81       1750
      1369 AJAY       CEO                     50 EEE        07-JUN-00       3750
      2369 KALI       ANALYST                 10 ECE        03-MAR-90       1550
      3369 BONES      CLERK                   40 BME        07-MAY-82       1700
      4369 KOHLI      ANALYST                 10 ECE        08-MAY-96        500
      5369 MIKE       CLERK                   20 CSE        08-MAY-95       1750
      6369 ANDREWS    ANALYST                    CIVIL      08-MAY-94       2750
      8369 SACHIN     SALESMAN                10 ECE        08-MAY-93        750
      9369 DHONI      ANALYST                 50 EEE        08-MAY-92        500

10 rows selected.

SQL>  SELECT NAME FROM EMPLOYEE
  2      WHERE DEPTNO=10;

NAME                                                                            
----------                                                                      
KALI                                                                            
KOHLI                                                                           
SACHIN                                                                          

SQL>  SELECT NAME,SALARY FROM EMPLOYEE
  2      WHERE SALARY>1000;

NAME           SALARY                                                           
---------- ----------                                                           
DEVANATHAN          2750                                                           
ARJUN            1750                                                           
AJAY             3750                                                           
KALI             1550                                                           
BONES            1700                                                           
MIKE             1750                                                           
ANDREWS          2750                                                           

7 rows selected.

SQL> SELECT NAME FROM EMPLOYEE
  2     WHERE DEPTNO=20;

NAME                                                                            
----------                                                                      
ARJUN                                                                           
MIKE                                                                            

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE DESIGNATION= 'CLERK' AND DEPTNO=20;

NAME                                                                            
----------                                                                      
MIKE                                                                            

SQL> SELECT EMPNO,NAME FROM EMPLOYEE
  2      WHERE DESIGNATION='MANAGER';

     EMPNO NAME                                                                 
---------- ----------                                                           
      7369 DEVANATHAN                                                              

SQL> SELECT * FROM EMPLOYEE
  2       WHERE DATEOFJOINING <=date'1980-09-30';

     EMPNO NAME       DESIGNATION         DEPTNO DEPTNAME   DATEOFJOI     SALARY
---------- ---------- --------------- ---------- ---------- --------- ----------
      7369 DEVANATHAN    MANAGER                 30 IT         02-FEB-76       2750

SQL> SELECT * FROM EMPLOYEE
  2      WHERE DESIGNATION !='MANAGER';

     EMPNO NAME       DESIGNATION         DEPTNO DEPTNAME   DATEOFJOI     SALARY
---------- ---------- --------------- ---------- ---------- --------- ----------
      7521 ARJUN      ANALYST                 20 CSE        22-JUN-81       1750
      1369 AJAY       CEO                     50 EEE        07-JUN-00       3750
      2369 KALI       ANALYST                 10 ECE        03-MAR-90       1550
      3369 BONES      CLERK                   40 BME        07-MAY-82       1700
      4369 KOHLI      ANALYST                 10 ECE        08-MAY-96        500
      5369 MIKE       CLERK                   20 CSE        08-MAY-95       1750
      6369 ANDREWS    ANALYST                    CIVIL      08-MAY-94       2750
      8369 SACHIN     SALESMAN                10 ECE        08-MAY-93        750
      9369 DHONI      ANALYST                 50 EEE        08-MAY-92        500

9 rows selected.

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE EMPNO=7639 OR EMPNO=7521;

NAME                                                                            
----------                                                                      
ARJUN                                                                           

SQL>  SELECT * FROM EMPLOYEE
  2       WHERE DEPTNO!=10 OR DEPTNO!=30 OR DEPTNO!=40;

     EMPNO NAME       DESIGNATION         DEPTNO DEPTNAME   DATEOFJOI     SALARY
---------- ---------- --------------- ---------- ---------- --------- ----------
      7369 DEVANATHAN    MANAGER                 30 IT         02-FEB-76       2750
      7521 ARJUN      ANALYST                 20 CSE        22-JUN-81       1750
      1369 AJAY       CEO                     50 EEE        07-JUN-00       3750
      2369 KALI       ANALYST                 10 ECE        03-MAR-90       1550
      3369 BONES      CLERK                   40 BME        07-MAY-82       1700
      4369 KOHLI      ANALYST                 10 ECE        08-MAY-96        500
      5369 MIKE       CLERK                   20 CSE        08-MAY-95       1750
      8369 SACHIN     SALESMAN                10 ECE        08-MAY-93        750
      9369 DHONI      ANALYST                 50 EEE        08-MAY-92        500

9 rows selected.

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE DEPTNO!=10 OR DEPTNO!=30 OR DEPTNO!=40;

NAME                                                                            
----------                                                                      
DEVANATHAN                                                                         
ARJUN                                                                           
AJAY                                                                            
KALI                                                                            
BONES                                                                           
KOHLI                                                                           
MIKE                                                                            
SACHIN                                                                          
DHONI                                                                           

9 rows selected.

SQL>  SELECT NAME FROM EMPLOYEE
  2      WHERE DEPTNO!=10;

NAME                                                                            
----------                                                                      
DEVANATHAN                                                                         
ARJUN                                                                           
AJAY                                                                            
BONES                                                                           
MIKE                                                                            
DHONI                                                                           

6 rows selected.

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE DEPTNO!=10 AND DEPTNO!=30 AND DEPTNO!=40;

NAME                                                                            
----------                                                                      
ARJUN                                                                           
AJAY                                                                            
MIKE                                                                            
DHONI                                                                           

SQL> ELECT NAME,SALARY FROM EMPLOYEE
SP2-0734: unknown command beginning "ELECT NAME..." - rest of line ignored.
SQL>    WHERE SALARY>1000 AND SALARY<2000;
SP2-0734: unknown command beginning "WHERE SALA..." - rest of line ignored.
SQL> ELECT NAME,SALARY FROM EMPLOYEE
SP2-0734: unknown command beginning "ELECT NAME..." - rest of line ignored.
SQL>    WHERE SALARY>1000 AND SALARY<2000;
SP2-0734: unknown command beginning "WHERE SALA..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> SELECT NAME,SALARY FROM EMPLOYEE
  2     WHERE SALARY>1000 AND SALARY<2000;

NAME           SALARY                                                           
---------- ----------                                                           
ARJUN            1750                                                           
KALI             1550                                                           
BONES            1700                                                           
MIKE             1750                                                           

SQL> SELECT NAME FROM EMPLOYEE
  2     WHERE DATEOFJOINING<date'1981-06-30' or DATEOFJOINING>date'1981-12-31';

NAME                                                                            
----------                                                                      
DEVANATHAN                                                                         
ARJUN                                                                           
AJAY                                                                            
KALI                                                                            
BONES                                                                           
KOHLI                                                                           
MIKE                                                                            
ANDREWS                                                                         
SACHIN                                                                          
DHONI                                                                           

10 rows selected.

SQL>  SELECT DESIGNATION FROM EMPLOYEE ;

DESIGNATION                                                                     
---------------                                                                 
MANAGER                                                                         
ANALYST                                                                         
CEO                                                                             
ANALYST                                                                         
CLERK                                                                           
ANALYST                                                                         
CLERK                                                                           
ANALYST                                                                         
SALESMAN                                                                        
ANALYST                                                                         

10 rows selected.

SQL> SELECT DISTINCT DESIGNATION FROM EMPLOYEE;

DESIGNATION                                                                     
---------------                                                                 
CLERK                                                                           
SALESMAN                                                                        
MANAGER                                                                         
ANALYST                                                                         
CEO                                                                             

SQL> SELECT NAME FROM EMPLOYEE
  2     WHERE DESIGNATION!='CLERK';

NAME                                                                            
----------                                                                      
DEVANATHAN                                                                         
ARJUN                                                                           
AJAY                                                                            
KALI                                                                            
KOHLI                                                                           
ANDREWS                                                                         
SACHIN                                                                          
DHONI                                                                           

8 rows selected.

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE DESIGNATION='CEO';

NAME                                                                            
----------                                                                      
AJAY                                                                            

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE DEPTNO='';

no rows selected

SQL>  SELECT NAME FROM EMPLOYEE
  2     WHERE DESIGNATION='CLERK';

NAME                                                                            
----------                                                                      
BONES                                                                           
MIKE                                                                            

SQL> SELECT NAME FROM EMPLOYEE
  2       WHERE DEPTNO IS NULL;

NAME                                                                            
----------                                                                      
ANDREWS                                                                         

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE SALARY>2000 AND DESIGNATION!='CLERK';

NAME                                                                            
----------                                                                      
DEVANATHAN                                                                         
AJAY                                                                            
ANDREWS                                                                         

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE NAME LIKE 'S%';

NAME                                                                            
----------                                                                      
SACHIN                                                                          

SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE NAME LIKE '%S';

NAME                                                                            
----------                                                                      
BONES                                                                           
ANDREWS                                                                         

SQL> 
SQL> SELECT NAME FROM EMPLOYEE
  2      WHERE NAME LIKE '_I__';

NAME                                                                            
----------                                                                      
MIKE                                                                            

SQL> SELECT NAME FROM EMPLOYEE
  2     WHERE NAME LIKE '_____';

NAME                                                                            
----------                                                                      
ARJUN                                                                           
BONES                                                                           
KOHLI                                                                           
DHONI                                                                           

SQL> SELECT NAME FROM EMPLOYEE ORDER BY SALARY;

NAME                                                                            
----------                                                                      
KOHLI                                                                           
DHONI                                                                           
SACHIN                                                                          
KALI                                                                            
BONES                                                                           
ARJUN                                                                           
MIKE                                                                            
ANDREWS                                                                         
DEVANATHAN                                                                         
AJAY                                                                            

10 rows selected.

SQL> SELECT NAME,SALARY,0.10*SALARY PF;
SELECT NAME,SALARY,0.10*SALARY PF
                                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT NAME,SALARY,0.10*SALARY PF FROM EMPLOYEE;

NAME           SALARY         PF                                                
---------- ---------- ----------                                                
DEVANATHAN          2750        275                                                
ARJUN            1750        175                                                
AJAY             3750        375                                                
KALI             1550        155                                                
BONES            1700        170                                                
KOHLI             500         50                                                
MIKE             1750        175                                                
ANDREWS          2750        275                                                
SACHIN            750         75                                                
DHONI             500         50                                                

10 rows selected.

SQL> SELECT NAME,SALARY,DESIGNATION,DEPTNO ORDER BY DEPTNO DESC FROM EMPLOYEE;
SELECT NAME,SALARY,DESIGNATION,DEPTNO ORDER BY DEPTNO DESC FROM EMPLOYEE
                                      *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT NAME,SALARY,DESIGNATION,DEPTNO FROM EMPLOYEE ORDER BY DEPTNO DESC;

NAME           SALARY DESIGNATION         DEPTNO                                
---------- ---------- --------------- ----------                                
ANDREWS          2750 ANALYST                                                   
DHONI             500 ANALYST                 50                                
AJAY             3750 CEO                     50                                
BONES            1700 CLERK                   40                                
DEVANATHAN          2750 MANAGER                 30                                
ARJUN            1750 ANALYST                 20                                
MIKE             1750 CLERK                   20                                
KOHLI             500 ANALYST                 10                                
SACHIN            750 SALESMAN                10                                
KALI             1550 ANALYST                 10                                

10 rows selected.

SQL> SELECT * FROM EMPLOYEE;

     EMPNO NAME       DESIGNATION         DEPTNO DEPTNAME   DATEOFJOI     SALARY
---------- ---------- --------------- ---------- ---------- --------- ----------
      7369 DEVANATHAN    MANAGER                 30 IT         02-FEB-76       2750
      7521 ARJUN      ANALYST                 20 CSE        22-JUN-81       1750
      1369 AJAY       CEO                     50 EEE        07-JUN-00       3750
      2369 KALI       ANALYST                 10 ECE        03-MAR-90       1550
      3369 BONES      CLERK                   40 BME        07-MAY-82       1700
      4369 KOHLI      ANALYST                 10 ECE        08-MAY-96        500
      5369 MIKE       CLERK                   20 CSE        08-MAY-95       1750
      6369 ANDREWS    ANALYST                    CIVIL      08-MAY-94       2750
      8369 SACHIN     SALESMAN                10 ECE        08-MAY-93        750
      9369 DHONI      ANALYST                 50 EEE        08-MAY-92        500

10 rows selected.

SQL> COUNT OF EMPNO;
SP2-0734: unknown command beginning "COUNT OF E..." - rest of line ignored.
SQL> select COUNT(EMPNO) FROM EMPLOYEE;

COUNT(EMPNO)                                                                    
------------                                                                    
          10                                                                    

SQL> SELECT DISTINCT DESIGNATION FROM EMPLOYEE;

DESIGNATION                                                                     
---------------                                                                 
CLERK                                                                           
SALESMAN                                                                        
MANAGER                                                                         
ANALYST                                                                         
CEO                                                                             

SQL>  COUNT OF DISTINCT DESIGNATION FROM EMPLOYEE;
SP2-0734: unknown command beginning "COUNT OF D..." - rest of line ignored.
SQL> select COUNT( DISTINCT DESIGNATION) FROM EMPLOYEE;

COUNT(DISTINCTDESIGNATION)                                                      
--------------------------                                                      
                         5                                                      

SQL> SELECT SUM(SALARY) FROM EMPLOYEE;

SUM(SALARY)                                                                     
-----------                                                                     
      17750                                                                     

SQL> SELECT AVG(SALARY),COUNT(EMPNO) FROM EMPLOYEE
  2  WHERE DEPTNO=20;

AVG(SALARY) COUNT(EMPNO)                                                        
----------- ------------                                                        
       1750            2                                                        

SQL> SELECT DEPTNO,COUNT(*) FROM EMPLOYE GROUP BY DEPTNO;
SELECT DEPTNO,COUNT(*) FROM EMPLOYE GROUP BY DEPTNO
                            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT DEPTNO,COUNT(*) FROM EMPLOYEE GROUP BY DEPTNO;

    DEPTNO   COUNT(*)                                                           
---------- ----------                                                           
        30          1                                                           
                    1                                                           
        20          2                                                           
        50          2                                                           
        40          1                                                           
        10          3                                                           

6 rows selected.

SQL> SELECT DEPTNO,COUNT(*) FROM EMPLOYEE GROUP BY DEPTNO
  2  WHERE DEPTNO!=NULL;
WHERE DEPTNO!=NULL
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> SELECT DEPTNO,COUNT(*) FROM EMPLOYEE GROUP BY DEPTNO
  2   WHERE DEPTNO!='';
 WHERE DEPTNO!=''
 *
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> SELECT DEPTNO,SUM(SALARY) FROM EMPLOYEE GROUP BY DEPTNO;

    DEPTNO SUM(SALARY)                                                          
---------- -----------                                                          
        30        2750                                                          
                  2750                                                          
        20        3500                                                          
        50        4250                                                          
        40        1700                                                          
        10        2800                                                          

6 rows selected.

SQL> SELECT DISTINCT DESIGNATION,COUNT(*) FROM EMPLOYEE GROUP BY DESIGNATION;

DESIGNATION       COUNT(*)                                                      
--------------- ----------                                                      
CLERK                    2                                                      
SALESMAN                 1                                                      
MANAGER                  1                                                      
ANALYST                  5                                                      
CEO                      1                                                      

SQL> SELECT DISTINCT DESIGNATION,COUNT(*) FROM EMPLOYEE GROUP BY DESIGNATION ORDER BY COUNT(DESIGNATION);

DESIGNATION       COUNT(*)                                                      
--------------- ----------                                                      
MANAGER                  1                                                      
CEO                      1                                                      
SALESMAN                 1                                                      
CLERK                    2                                                      
ANALYST                  5                                                      

SQL>  SELECT DISTINCT DESIGNATION,MIN(SALARY).MAX(SALARY),AVG(SALARY) FROM EMPLOYEE GROUP BY DESIGNATION;
 SELECT DISTINCT DESIGNATION,MIN(SALARY).MAX(SALARY),AVG(SALARY) FROM EMPLOYEE GROUP BY DESIGNATION
                                        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL>  SELECT DISTINCT DESIGNATION,MIN(SALARY),MAX(SALARY),AVG(SALARY) FROM EMPLOYEE GROUP BY DESIGNATION;

DESIGNATION     MIN(SALARY) MAX(SALARY) AVG(SALARY)                             
--------------- ----------- ----------- -----------                             
CLERK                  1700        1750        1725                             
SALESMAN                750         750         750                             
MANAGER                2750        2750        2750                             
ANALYST                 500        2750        1410                             
CEO                    3750        3750        3750                             

SQL> SELECT AVG(SALARY) FROM EMPLOYEE
  2  WHERE DESIGNATION!='MANAGER';

AVG(SALARY)                                                                     
-----------                                                                     
 1666.66667                                                                     

SQL> SELECT DEPTNO,DESIGNATION,AVG(SALARY) FROM EMPLOYEE GROUP BY DESIGNATION ORDER BY DEPTNO;
SELECT DEPTNO,DESIGNATION,AVG(SALARY) FROM EMPLOYEE GROUP BY DESIGNATION ORDER BY DEPTNO
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> SELECT DEPTNO,DESIGNATION,AVG(SALARY) FROM EMPLOYEE GROUP BY DESIGNATION;
SELECT DEPTNO,DESIGNATION,AVG(SALARY) FROM EMPLOYEE GROUP BY DESIGNATION
       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> SELECT DEPTNO,DESIGNATION,AVG(SALARY) FROM EMPLOYEE GROUP BY DISTINCT DESIGNATION;
SELECT DEPTNO,DESIGNATION,AVG(SALARY) FROM EMPLOYEE GROUP BY DISTINCT DESIGNATION
                                                             *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT DEPTNO,DESIGNATION,AVG(SALARY) FROM EMPLOYEE GROUP BY DESIGNATION,DEPTNO;

    DEPTNO DESIGNATION     AVG(SALARY)                                          
---------- --------------- -----------                                          
        10 ANALYST                1025                                          
        10 SALESMAN                750                                          
        20 ANALYST                1750                                          
        30 MANAGER                2750                                          
        40 CLERK                  1700                                          
        20 CLERK                  1750                                          
           ANALYST                2750                                          
        50 CEO                    3750                                          
        50 ANALYST                 500                                          

9 rows selected.

SQL> SELECT DEPTNO,AVG(SALARY) FROM EMPLOYEE
  2  GROUP BY DEPTNO
  3  HAVING COUNT(EMPNO)>5;

no rows selected

SQL> SELECT DESIGNATION FROM EMPLOYEE
  2  GROUP BY DEISGNATION HAVING MAX(SALARY)>=5000;
GROUP BY DEISGNATION HAVING MAX(SALARY)>=5000
         *
ERROR at line 2:
ORA-00904: "DEISGNATION": invalid identifier 


SQL> SELECT DESIGNATION FROM EMPLOYEE GROUP BYE DESIGNATION HAVING MAX(SALARY)>=5000;
SELECT DESIGNATION FROM EMPLOYEE GROUP BYE DESIGNATION HAVING MAX(SALARY)>=5000
                                       *
ERROR at line 1:
ORA-00924: missing BY keyword 


SQL> SELECT DESIGNATION FROM EMPLOYEE GROUP BY DESIGNATION HAVING MAX(SALARY)>=5000;

no rows selected

SQL> SELECT SUM(SALARY) AS TOTALSALARY,MIN(SALARY),MAX(SALARY),AVG(SALARY) FROM EMPLOYEE
  2  WHERE DEPTNO=20
  3  HAVING AVG(SALARY)>1000;

TOTALSALARY MIN(SALARY) MAX(SALARY) AVG(SALARY)                                 
----------- ----------- ----------- -----------                                 
       3500        1750        1750        1750                                 

SQL> SPOOL OFF;
