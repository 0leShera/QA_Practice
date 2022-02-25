-- 1. Создать таблицу employees.

create table employees(
	id serial  primary key,
	employee_name Varchar(50) not null
);

select * from employees;

-- 2. Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
select full_name from names;

-- 3. Создать таблицу salary.
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;
-- drop table salary;

-- 4. Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
	values (1000),
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
	
		  
-- 5. Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

drop table employee_salary;
select * from employee_salary;

-- 6. Наполнить таблицу employee_salary 40 строками (в 10 строк вставить несуществующие employee_id)
insert into employee_salary (id, employee_id, salary_id)
values  (default, 1, 1),
		(default, 3, 2),
		(default, 5, 3),
		(default, 6, 4),
		(default, 7, 5),
		(default, 9, 6),
		(default, 11, 7),
		(default, 13, 8),
		(default, 15, 9),
		(default, 16, 10),
		(default, 17, 11),
		(default, 19, 12),
		(default, 21, 13),
		(default, 23, 14),
		(default, 25, 15),
		(default, 27, 4),
		(default, 29, 5),
		(default, 31, 6),
		(default, 33, 7),
		(default, 35, 8),
		(default, 37, 9),
		(default, 39, 10),
		(default, 41, 11),
		(default, 43, 12),
		(default, 45, 1),
		(default, 47, 2),
		(default, 49, 3),
		(default, 51, 4),
		(default, 53, 5),
		(default, 55, 6),
		(default, 157, 7),
		(default, 159, 8),
		(default, 161, 9),
		(default, 163, 10),
		(default, 165, 11),
		(default, 71, 8),
		(default, 73, 9),
		(default, 75, 10),
		(default, 77, 11),
		(default, 79, 12);

-- 7. Создать таблицу roles.
create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

-- 8. Поменять тип столба role_name с int на varchar(30).
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

-- 9. Наполнить таблицу roles 20 строками.
insert into roles(role_name)
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


-- 10. Создать таблицу roles_employee.
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

-- 11. Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(id, employee_id, role_id)
values  (default, 1, 1),
		(default, 3, 2),
		(default, 5, 3),
		(default, 6, 4),
		(default, 7, 5),
		(default, 9, 6),
		(default, 11, 7),
		(default, 13, 8),
		(default, 15, 9),
		(default, 16, 10),
		(default, 17, 11),
		(default, 19, 12),
		(default, 21, 13),
		(default, 23, 14),
		(default, 25, 15),
		(default, 27, 16),
		(default, 29, 17),
		(default, 31, 18),
		(default, 33, 19),
		(default, 35, 20),
		(default, 37, 9),
		(default, 39, 10),
		(default, 41, 11),
		(default, 43, 12),
		(default, 45, 11),
		(default, 47, 12),
		(default, 49, 13),
		(default, 51, 14),
		(default, 53, 15),
		(default, 55, 16),
		(default, 56, 17),
		(default, 57, 18),
		(default, 58, 19),
		(default, 59, 10),
		(default, 60, 11),
		(default, 61, 8),
		(default, 62, 9),
		(default, 63, 10),
		(default, 64, 11),
		(default, 65, 12);

