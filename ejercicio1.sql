create database db_biblioteca;
use db_biblioteca;
create table author(

id int  primary key auto_increment not null,
name varchar (50) not null,
first_name varchar (50) not null,
last_name varchar (50) not null,
email varchar (50) null,
phone varchar (11) null

);
create table books(

id int  primary key not null,
id_author int,
name varchar(50) not null,
title varchar (100) not null,
publisher date not null,
sbn  char(12),
foreign key (id_author) references author(id_author),
create_at datetime,
update_at datetime

);
create table user(

id int auto_increment primary key,
name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) unique not null,
password varchar(255) not null);

create table book_loans(
loan_id int auto_increment primary key,
book_id int not null,
member_id int not null,
borrow_date date not null,
due_date date not null,
return_date date,
is_returned boolean default FALSE,
foreign key(book_id) references books(id),
foreign key (member_id) references members(id)
);

