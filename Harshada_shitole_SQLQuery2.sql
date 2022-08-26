create table EMP(empno integer, ename varchar(20), job varchar(20), mgr_id integer, hiredate date, sal integer, comm integer, deptno integer);

create table DEPT(deptno int, dname varchar(20), loc varchar(20));

insert into EMP values(7369  ,'SMITH',      'CLERK',	7902   ,	'17-DEC-80',     	 800	  ,     null   , 20);
insert into EMP values( 7499   , 'ALLEN'     , 'SALESMAN '  ,  7698     ,' 20-FEB-81'    ,	 1600    , 300   , 30);
insert into EMP values(7521   , 'WARD',	 'SALESMAN ' ,  7698  , '22-FEB-81' , 1250   ,  500   , 30);
insert into EMP values(7566 ,' JONES','MANAGER',7839 , '02-APR-81'  , 2975 ,null, 20);
insert into EMP values(7654  ,'MARTIN'     ,'SALESMAN'    ,  7698      ,'28-SEP-81' , 	 1250   , 1400  ,  30);
insert into EMP values(7698	 ,' BLAKE' 	, 'MANAGER', 	 7839 ,	'01-MAY-81'    ,	 2850  ,null   , 30);
insert into EMP values(7782, 'CLARK', 'MANAGER'       ,7839  ,'09-JUN-81' , 2450,null  , 10);
insert into EMP values(7788    ,'SCOTT'    , 'ANALYST'     ,  7566    ,  '19-APR-87'      , 	 3000         , null,  20);
insert into EMP values(7839    ,'KING'      ,'PRESIDENT'          ,  null	 ,'17-NOV-81'     ,  	 5000, null      ,     10);
insert into EMP values(7844    ,'TURNER'   , 'SALESMAN'   ,   7698   	, '08-SEP-81'    	 ,1500    ,  0    , 30);
insert into EMP values(7876    ,'ADAMS'   ,  'CLERK'      ,   7788   ,	 '23-MAY-87'       	, 1100        , null ,  20);
insert into EMP values(7900   , 'JAMES'    , 'CLERK'   ,      7698   	, '03-DEC-81'  	,  950, null       ,    30);
insert into EMP values(7902    ,'FORD'     , 'ANALYST'   ,    7566   	 ,'03-DEC-81' ,  	 3000         ,null ,  20);
insert into EMP values(7934    ,'MILLER'   , 'CLERK'         ,7782    ,'	 23-JAN-82'		, 1300      ,    null  ,10);


insert into DEPT values(10   , 'ACCOUNTING'   , 'NEW YORK' );
insert into DEPT values(20   , 'RESEARCH'    ,  'DALLAS' );
insert into DEPT values(30   , 'SALES'        , 'CHICAGO' );
insert into DEPT values(40   , 'OPERATIONS'   , 'BOSTON' );



select * from EMP where ename like 'A%';
select * from EMP where mgr_id IS NULL;
select empno,ename,sal from EMP where sal between 1200 and 1400;
select * from EMP;
update EMP set sal=sal+(sal*10/100) where deptno=(select deptno from DEPT where dname='RESEARCH');
select * from EMP;
update EMP set job='Employed_clerk' where job='clerk' and sal>0;
select job,count(empno) as emp_count ,avg(sal) as Average_Salary from EMP group by job;

select ename,sal from EMP group by ename,sal having sal=(select min(sal) from EMP)
union  
select ename,sal from EMP group by ename,sal having sal=(select max(sal) from EMP);

select * from DEPT where deptno not in(select deptno from EMP);

select ename,sal from EMP where job='ANALYST' and sal>1200 and deptno=20 order by ename asc;

select DEPT.dname,EMP.deptno,sum(sal) as SUM_SAL from EMP  inner join DEPT on EMP.deptno=DEPt.deptno group by EMP.deptno,DEPT.dname order by EMP.deptno;

select ename , sal from EMP where ename='Miller' or ename='Smith';

select ename from EMP where ename like '[AM]%';

select ename , sum(12*sal) from EMP where ename='Smith';

select ename,sal from EMP where ename not in(select ename from EMP where sal between 1500 and 2850);