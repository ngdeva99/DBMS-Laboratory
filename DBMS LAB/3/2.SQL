SQL> SELECT * FROM EMP1 WHERE DNO=10;
SELECT * FROM EMP1 WHERE DNO=10
                         *
ERROR at line 1:
ORA-00904: "DNO": invalid identifier 


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

SQL> SELECT * FROM EMP1 WHERE DEPTNO=10;

     EMPNO NAME                 DESIGNATION              DEPTNO                 
---------- -------------------- -------------------- ----------                 
DNAME                DOJ           SALARY                                       
-------------------- --------- ----------                                       
      2369 KALIMBA              ANALYST                      10                 
ECE                  03-MAR-90       1450                                       
                                                                                
      4369 KONAN                ANALYST                      10                 
ECE                  08-MAY-96        450                                       
                                                                                
      8369 SARAH                SALESMAN                     10                 
ECE                  02-MAY-93        750                                       
                                                                                

SQL> ALTER TABLE EMP1 MODIFY NAME VARCHAR2(10),DESIGNATION VARCHAR2(11),DNAME VARCHAR2(10);
ALTER TABLE EMP1 MODIFY NAME VARCHAR2(10),DESIGNATION VARCHAR2(11),DNAME VARCHAR2(10)
                                         *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option 


SQL> ALTER TABLE EMP1 MODIFY NAME VARCHAR2(10)
  2                                           ;

Table altered.

SQL> ALTER TABLE EMP1 MODIFY NAME VARCHAR2(10)
  2  
SQL> ALTER TABLE EMP1 MODIFY DESIGNATION VARCHAR2(11);

Table altered.

SQL> ALTER TABLE EMP1 MODIFY DName varchar(10);

Table altered.

SQL> select * from emp1;

     EMPNO NAME       DESIGNATION     DEPTNO DNAME      DOJ           SALARY    
---------- ---------- ----------- ---------- ---------- --------- ----------    
      7369 DEVA       MANAGER             30 CSE        02-FEB-76       2550    
      7521 ARJUN      ANALYST             20 IT         22-JUN-81       1850    
      1369 VIJAY      CEO                 50 EEE        07-JUN-00       3950    
      2369 KALIMBA    ANALYST             10 ECE        03-MAR-90       1450    
      3369 BOHRA      CLERK               40 BME        07-MAY-82       1700    
      4369 KONAN      ANALYST             10 ECE        08-MAY-96        450    
      5369 MIKEY      CLERK               20 CSE        09-MAY-95       1850    
      6369 ANDRE      ANALYST             60 CIVIL      11-MAY-94       2550    
      8369 SARAH      SALESMAN            10 ECE        02-MAY-93        750    
      9369 DRAVID     ANALYST             50 EEE        12-MAY-91        450    

10 rows selected.

SQL> select * from emp1 where deptno=10;

     EMPNO NAME       DESIGNATION     DEPTNO DNAME      DOJ           SALARY    
---------- ---------- ----------- ---------- ---------- --------- ----------    
      2369 KALIMBA    ANALYST             10 ECE        03-MAR-90       1450    
      4369 KONAN      ANALYST             10 ECE        08-MAY-96        450    
      8369 SARAH      SALESMAN            10 ECE        02-MAY-93        750    

SQL> select name,salary from emp1 where salary>1000;

NAME           SALARY                                                           
---------- ----------                                                           
DEVA             2550                                                           
ARJUN            1850                                                           
VIJAY            3950                                                           
KALIMBA          1450                                                           
BOHRA            1700                                                           
MIKEY            1850                                                           
ANDRE            2550                                                           

7 rows selected.

SQL> select name from emp1 where dname='clerk' and deptno=20;

no rows selected

SQL> select name from emp1 where designation='clerk' and deptno=20;

no rows selected

SQL> select name from emp1 where designation='CLERK' AND DEPTNO=20;

NAME                                                                            
----------                                                                      
MIKEY                                                                           

SQL> SELECT EMPNO,NAME FROM EMP1 WHERE DESIGNATION='MANAGER';

     EMPNO NAME                                                                 
---------- ----------                                                           
      7369 DEVA                                                                 

SQL> ALTER TABLE EMP1 MODIFY NAME VARCHAR2(10)
  2  
SQL> select name from emp1 where designation='ANALYST' OR DESIGNATION='SALESMAN';

NAME                                                                            
----------                                                                      
ARJUN                                                                           
KALIMBA                                                                         
KONAN                                                                           
ANDRE                                                                           
SARAH                                                                           
DRAVID                                                                          

6 rows selected.

SQL> SELECT * FROM EMP1 WHERE DOJ<TO_DATE('30/09/1980','DD/MM/YYYY') ORDER BY DOJ;

     EMPNO NAME       DESIGNATION     DEPTNO DNAME      DOJ           SALARY    
---------- ---------- ----------- ---------- ---------- --------- ----------    
      7369 DEVA       MANAGER             30 CSE        02-FEB-76       2550    

SQL> SELECT * FROM EMP1 WHERE NOT NAME='MANAGER';

     EMPNO NAME       DESIGNATION     DEPTNO DNAME      DOJ           SALARY    
---------- ---------- ----------- ---------- ---------- --------- ----------    
      7369 DEVA       MANAGER             30 CSE        02-FEB-76       2550    
      7521 ARJUN      ANALYST             20 IT         22-JUN-81       1850    
      1369 VIJAY      CEO                 50 EEE        07-JUN-00       3950    
      2369 KALIMBA    ANALYST             10 ECE        03-MAR-90       1450    
      3369 BOHRA      CLERK               40 BME        07-MAY-82       1700    
      4369 KONAN      ANALYST             10 ECE        08-MAY-96        450    
      5369 MIKEY      CLERK               20 CSE        09-MAY-95       1850    
      6369 ANDRE      ANALYST             60 CIVIL      11-MAY-94       2550    
      8369 SARAH      SALESMAN            10 ECE        02-MAY-93        750    
      9369 DRAVID     ANALYST             50 EEE        12-MAY-91        450    

10 rows selected.

SQL>  SELECT * FROM EMP1 WHERE NOT DESIGNATION='MANAGER';

     EMPNO NAME       DESIGNATION     DEPTNO DNAME      DOJ           SALARY    
---------- ---------- ----------- ---------- ---------- --------- ----------    
      7521 ARJUN      ANALYST             20 IT         22-JUN-81       1850    
      1369 VIJAY      CEO                 50 EEE        07-JUN-00       3950    
      2369 KALIMBA    ANALYST             10 ECE        03-MAR-90       1450    
      3369 BOHRA      CLERK               40 BME        07-MAY-82       1700    
      4369 KONAN      ANALYST             10 ECE        08-MAY-96        450    
      5369 MIKEY      CLERK               20 CSE        09-MAY-95       1850    
      6369 ANDRE      ANALYST             60 CIVIL      11-MAY-94       2550    
      8369 SARAH      SALESMAN            10 ECE        02-MAY-93        750    
      9369 DRAVID     ANALYST             50 EEE        12-MAY-91        450    

9 rows selected.

SQL> SELECT NAME FROM EMP1 WHERE EMPNO=7369 OR EMPNO=7521;

NAME                                                                            
----------                                                                      
DEVA                                                                            
ARJUN                                                                           

SQL> SPOOL OFF;
