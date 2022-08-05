select * from hr.employees;


-- projection
select employee_id, first_name , commission_pct,commission_pct+100 newcommisson, salary, salary+100 as newsalary from employees;

-- selection { row select} = Where clause

select * from employees where employee_id='101';

-- operator
select * from employees where employee_id between 101 and 107;


select * from employees where employee_id in (101,103,107);

-- like operator {%,_}
select * from employees where first_name like 'N%%';
select * from employees where first_name like 'L__';




create table jobtest2 as select job_id  from jobs;

select * from jobtest2;

insert into jobtest2 values ('AD_help');
insert into jobtest2 values ('ADs_help');

select job_id from jobtest2 where job_id like 'AD _%';


select employee_id, first_name, commission_pct from employees
where commission_pct is null;

select * from employees;
select * from employees where (employee_id between 145 and 148) and commission_pct='0.3';

select * from employees where (employee_id='145') and first_name='John';

select* from employees;

select employee_id, first_name, job_id, salary
from employees
where (job_id='AD_PRES' or job_id='SA_REP') and salary>=10000;
    
    
select * from employees where first_name='&ename';
