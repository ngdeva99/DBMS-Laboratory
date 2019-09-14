SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
DEPT                           TABLE                                            
EMP                            TABLE                                            
EMPLOYEE                       TABLE                                            

SQL> select * from employeel
  2  
SQL> select * from employee;

       ENO ENAME                         SALARY SEX  HIREDATE                   
---------- ------------------------- ---------- ---- ---------                  
         2 MANI                           16000                                 

SQL> update employee set hiredate=to_date('23/10/1999','dd/mm/yyyy') where ENO=2;

1 row updated.

SQL> select * from employee;

       ENO ENAME                         SALARY SEX  HIREDATE                   
---------- ------------------------- ---------- ---- ---------                  
         2 MANI                           16000      23-OCT-99                  

SQL> spool off;
