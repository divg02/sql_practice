 select * from employees where salary between 9000 and 20000;
    select * from employees where employee_id not between 100 and 120; 
    
    select first_name as "fname" from employees;

select employee_id, first_name from employees where employee_id='100';

-- lower, initcap
select employee_id, first_name, upper(first_name) from employees where employee_id ='100';

-- index =>1
select employee_id, first_name, substr(first_name, 2,4) from employees where employee_id='100';

select employee_id, first_name, instr(first_name,'e',1,2) from employees where employee_id ='100';

select employee_id, hire_date from employees;


--date => string(varchar2)
select employee_id, hire_date, to_char(hire_date, 'DD/MON/YYYY') from employees;

select employee_id, hire_date, to_char(hire_date,'DD/MM/YYYY') from employees;

select employee_id,hire_date,  to_char(hire_date,'YEAR') from employees;

--pseudo column
select sysdate, sysdate+10 from dual;

select employee_id,hire_date,sysdate ,round((sysdate-hire_date)/7) from employees;


select salary,lpad(salary,5,'0') from employees;

--To handle the none values

select employee_id,commission_pct,nvl(commission_pct,0) from employees;

select employee_id,commission_pct,nvl2(commission_pct,salary,1) from employees;

select employee_id,salary,commission_pct,coalesce(commission_pct,salary,1) from employees;

select max(salary),min(salary) from employees;
select job_id,max(salary) from employees
group by job_id;

select first_name,max(salary) from employees
group by first_name;

select job_id,first_name,salary from employees
where salary>10000;

select distinct(job_id) from employees;

--having clause
select job_id,max(salary) from employees
where salary>10000
group by job_id;


select job_id, max(salary) as maxsalary from employees
group by job_id
having max(salary)>10000
order by maxsalary;

--subquery
select salary from employees where first_name='Neena';

select first_name,salary from employees where salary>17000;


select first_name,salary from employees 
where salary>(select salary from employees where first_name='Neena');

select employee_id,first_name,salary from employees
where first_name = (select first_name from employees where employee_id='110');

--Tcl= Transaction control language: DQL,ddl,Insert(DML)

--dmlm task (Transaction started)
--ddl task(Transaction ended),commit,rollback,machine failed

create table emp123 as
select employee_id,first_name from employees where employee_id between 100 and 103;

select * from emp123;
insert into emp123(employee_id,first_name) values(106,'John');
insert into emp123(employee_id,first_name) values(107,'John11');
insert into emp123(employee_id,first_name) values(109,'John112');
insert into emp123(employee_id,first_name) values(108,'John222');
savepoint div02;
rollback to savepoint div02;
rollback;
--iss se savepoint bhi wapas ho jaata hai
--Iss se last baar jab commit kia tha wahan aa jata hai

--commit;
-- iss se permanently save ho jaata hai
