
--���� ��� ������-�� ����� ���� ������� �������������� �������, ��������� � �������, �� ������� )

-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from employee_salary
join salary on salary_id = salary.id
left join employees on employee_id = employees.id 
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from employee_salary
join salary on salary_id = salary.id
left join employees on employee_id = employees.id 
where employee_name is null and monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.

select employee_name, monthly_salary from employee_salary
join salary on salary_id = salary.id
right join employees on employee_id = employees.id
where monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from roles_employee
join roles on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.id; 

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from roles_employee
join roles on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.id 
where role_name like '%Java%' and role_name like '%developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from roles_employee
join roles on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.id 
where role_name like '%Python%' and role_name like '%developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from roles_employee
join roles on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.id 
where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from roles_employee
join roles on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.id 
where role_name like '%Manual%' and role_name like '%QA%';

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from roles_employee
join roles on roles.id = roles_employee.role_id 
join employees on employees.id = roles_employee.id 
where role_name like '%Automation%' and role_name like '%QA%';

-- 12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Junior%'; 

-- 13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Middle%'; 

-- 14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Java%' and role_name like '%developer%';

-- 16. ������� �������� Python �������������
select monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Junior Python%';

-- 18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Middle JavaScript%';

-- 19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Senior%' and role_name like '%Java developer%'

-- 20. ������� �������� Junior QA ���������

select monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Junior%' and role_name like '%QA%';

-- 21. ������� ������� �������� ���� Junior ������������

select round(avg(monthly_salary),2) from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������

select sum(monthly_salary) from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%JavaScript%'; 

-- 23. ������� ����������� �� QA ���������

select min(monthly_salary) from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������

select max(monthly_salary) from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%QA%';

-- 25. ������� ���������� QA ���������

select count(role_name) from roles_employee
join roles on roles.id = roles_employee.role_id 
where role_name like '%QA%'

-- 26. ������� ���������� Middle ������������.
select count(role_name) from roles_employee
join roles on roles.id = roles_employee.role_id 
where role_name like 'Middle%';

-- 27. ������� ���������� �������������
select count(role_name) from roles_employee
join roles on roles.id = roles_employee.role_id 
where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.

select sum(monthly_salary) from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where role_name like '%developer%';


-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where employee_name is not null and role_name is not null
order by monthly_salary asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where employee_name is not null and monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where employee_name is not null and monthly_salary < 2300 
order by monthly_salary asc;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id
where employee_name is not null and monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;

--�������� ������				
select * from employees;
select * from salary;
select * from employee_salary ;
select * from roles;
select * from roles_employee;

select employee_name, role_name, monthly_salary from employee_salary
left join employees on employee_id = employees.id 
left join roles on roles.id = employee_id 
join salary on salary_id = salary.id;


select employee_name, role_name, monthly_salary from employee_salary
join salary on salary_id = salary.id
right join employees on employee_id = employees.id
left join roles on roles.id = employee_id;
