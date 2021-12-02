--1 Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
--2 Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values  ('Bernard Reese'),
		('David Walters'),
		('Donna Green'),
		('Mary Brown'),
		('Lawrence Hunt'),
		('Jack Walters'),
		('Theodore Torres'),
		('Shawn Parker'),
		('Terry Andrews'),
		('Elizabeth Parks'),
		('Juan Brown'),
		('Susan Black'),
		('Jim Smith'),
		('Barbara Gibson'),
		('Albert Lynch'),
		('Gary Orti'),
		('Jonathan May'),
		('Kevin Hoffman'),
		('Stephanie Stanley'),
		('Kelly Sims'),
		('Martha Wes'),
		('Eric Davidson'),
		('Charlotte Allen'),
		('Alfredo Williams'),
		('Kenneth Rogers'),
		('Vicki Taylor'),
		('Kathleen Allen'),
		('Armando Wise'),
		('Juanita Jackson'),
		('Tiffany Smith'),
		('Gregory Myers'),
		('Lonnie Mathis'),
		('Debra Sims'),
		('Laura Frank'),
		('Mary Duncan'),
		('Violet Johnson'),
		('Hilda Hall'),
		('Ralph Barker'),
		('Helen Bush'),
		('Ethel Lopez'),
		('Robert Paul'),
		('Ida Stevens'),
		('Paula Little'),
		('Lisa Graham'),
		('Albert Baker'),
		('Tyrone Stephens'),
		('Brian Owens'),
		('Katie Stanley'),
		('Ashley Davis'),
		('Mark Allen'),
		('Marie Patton'),
		('Esther Williams'),
		('Daniel Davidson'),
		('Robert Smith'),
		('James White'),
		('Julia Williams'),
		('James Williams'),
		('Allison Gilbert'),
		('Theodore Townsend'),
		('Christina Turner'),
		('Robert Swanson'),
		('Sherry Harris'),
		('Regina Spencer'),
		('Kathleen Davis'),
		('Olga Hamilton'),
		('Helen Allison'),
		('Virginia Carpenter'),
		('Anna Richardson'),
		('Gregory Garcia'),
		('Sandra Warren');
	
--3 Создать таблицу salary
	
create table salary(
id serial primary key,
monthly_salary int not null
);

--4 Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values  (1000),
		(1100),
		(1200),
	    (1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);	

--5 Создать таблицу employee_salary

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (salary_id)
	references salary(id)
);

--6 Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values  (3,5),
		(5,16),
		(6,3),
		(2,4),
		(11,8),		
		(10,5),
		(1,10),
		(4,10),
		(7,2),
		(8,2),
		(9,3),
		(12,8),
		(15,9),
		(13,1),
		(18,6),
		(20,7),
		(19,5),
		(31,12),
		(33,11),
		(25,12),
		(30,13),
		(21,10),
		(29,15),
		(22,14),
		(23,14),
		(28,11),
		(26,1),
		(16,1),
		(17,9),
		(24,16),
		(79,11),
		(71,13),
		(74,1),
		(75,2),
		(78,4),
		(72,8),
		(80,5),
		(73,9),
		(76,16),
		(77,3);

--7 Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
	
create table roles (
id serial primary key,
role_name int not null unique
);

--8 Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

--9 Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

--10 Создать таблицу roles_employee

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);

--11 Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
values  (4,10),
		(1,2),
		(5,13),
		(3,20),
		(10,8),
		(13,19),
		(6,8),
		(15,17),
		(2,9),
		(14,9),
		(25,11),
		(18,10),
		(30,12),
		(28,15),
		(17,1),
		(23,3),
		(31,10),
		(43,8),
		(45,4),
		(21,5),
		(22,6),
		(38,6),
		(48,13),
		(33,18),
		(52,14),
		(58,7),
		(63,7),
		(24,17),
		(55,11),
		(41,4),
		(53,12),
		(62,5),
		(36,6),
		(19,19),
		(49,2),
		(61,1),
		(60,14),
		(50,12),
		(70,15),
		(11,3);
	
--просмотр таблиц				
select * from employees;
select * from salary;
select * from employee_salary ;
select * from roles;
select * from roles_employee;
