select mgr_id as Managers from EMP;

select ename,sal as SALARY from EMP where sal/12>1000;

select ename,sal from EMP where ename!='james';

select * from EMP where ename like 'S%';

select * from EMP where ename like '%A%';

select * from EMP where ename like '__L%';

select ename, (sal/12) as Montly_Sal from EMP;

select avg(sal) as average_Annual_sal from EMP;

select * from EMP where job != 'SALESMAN' and deptno != 30;

select deptno from EMP group by deptno;

select ename as Employee , sal as Monthly_Salaries from EMP where sal>1500 and deptno= 10 or deptno=30;

select ename,sal,job from EMP where sal not in (1000,3000,5000) and job in ('ANALYST','MANAGER');

select ename,sal,comm from EMP where comm>(sal+(10/100));

select ename from EMP where ename like '%l%l%' and(deptno=30 or mgr_id =7782);

select count(DATEDIFF(YEAR, hiredate , GETDATE())) "Experience" from EMP where DATEDIFF(YEAR, hiredate , GETDATE()) between 10 and 20;

select ename,deptno from EMP order by deptno asc,ename desc;

select ename , DATEDIFF(YEAR, hiredate , GETDATE()) "Experience" from EMP where ename='Miller' ;






