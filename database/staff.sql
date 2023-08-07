create database employee_management;
use employee_management;

create table department
(
    idDepartment   int auto_increment not null,
    nameDepartment varchar(60),
    constraint pk_department primary key (idDepartment)
);

create table employee
(
    idEmployee   int   auto_increment      not null,
    name         varchar(60) not null,
    email        varchar(60) not null,
    address      text        not null,
    phoneNumber  varchar(10) not null,
    salary       double      not null,
    idDepartment int         not null,
    foreign key (idDepartment) references department (idDepartment),
    constraint pk_employee primary key (idEmployee)
);

drop table employee;
insert into department(nameDepartment)
values ('C01');
insert into department(nameDepartment)
values ('C02');
insert into department(nameDepartment)
values ('C03');
insert into department(nameDepartment)
values ('C04');
select * from department;
insert into employee (name, email, address, phoneNumber, salary, idDepartment)
values ('nguyen anh tuan', 'tuan@gmail.com', 'ha noi', '0615654836', 500 , 1);

insert into employee (name, email, address, phoneNumber, salary, idDepartment)
values ('nguyen duc hieu', 'hieu@gmail.com', 'vinh phuc', '061549836', 400 , 2);

insert into employee (name, email, address, phoneNumber, salary, idDepartment)
values ('nguyen ba son', 'son@gmail.com', 'hai duong', '0615654836', 560 , 3);

insert into employee (name, email, address, phoneNumber, salary, idDepartment)
values ('nguyen quoc trieu', 'trieu@gmail.com', 'ha noi', '0615654836', 780 , 4);

select * from employee;
delete from employee where idDepartment = ?;
select *  from employee join department d on d.idDepartment = employee.idDepartment;
