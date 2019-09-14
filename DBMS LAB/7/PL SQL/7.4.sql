

DECLARE
salary1 NUMBER;

BEGIN
SELECT salary
INTO salary1
FROM emp1
WHERE Designation='Assistant Manager';
DBMS_OUTPUT.PUT_LINE
('Salary: '||salary1);
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('There is no such student');
END;
/