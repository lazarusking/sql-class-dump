# Question 1:
Find the sum of the salaries of all employees whose manager’s ssn is 333445555.
As well as the name of the department and the max, min, average salary of the employees in this department
and the total number of employees in this department
``` TSQL
SELECT DNAME,SUM(SALARY) AS SUM,MAX(SALARY) AS MAX,MIN(SALARY) AS MIN,AVG(SALARY) AS average,COUNT(*) AS COUNT 
FROM EMPLOYEE INNER JOIN DEPARTMENT ON EMPLOYEE.DNO=DEPARTMENT.DNUMBER AND DEPARTMENT.MGR_SSN=333445555
GROUP BY DNAME
```
# Question 2:
For each department, retrieve the department manager’s name, his supervisor, maxi& min salary
and total number of employees in the department. As well as the name of the department
``` TSQL
SELECT Emp.fname,Dname,mgr_ssn,max(employee.salary) as Max,min(employee.salary) as MIN,count(*) as count
from [DEPARTMENT] inner join employee on
Employee.dno=Department.dnumber left join Employee as emp on emp.ssn=Department.mgr_ssn
group by dname,mgr_ssn,emp.fname
``` 
 
# Question 3: 
For each project on which more than 2 employees work, retrieve the project number, project name, number of employees working on that project,
the controlling department name, manager name, department number and manager’s salary
``` TSQL
SELECT fname as [Manager name], salary, Pnumber,Pname,Dname,Dnum,COUNT(*) AS [Number of Employees]  
FROM [PROJECT] inner join WORKS_ON ON WORKS_ON.PNO=PROJECT.Pnumber 
inner join DEPARTMENT on DEPARTMENT.Dnumber=PROJECT.Dnum
left join EMPLOYEE on DEPARTMENT.Mgr_ssn=EMPLOYEE.ssn
GROUP BY Pnumber,Pname,Dname,Dnum, fname,salary
HAVING COUNT(*)>2
```
# Question 4: Delete a tuple in the employee table
``` TSQL
DELETE FROM [table name]
```
