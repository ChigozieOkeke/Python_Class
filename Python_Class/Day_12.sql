create database employee_details;
use employee_details;
create table staffinfo(
staff_id int not null primary key,
staff_name varchar(255) not null,
DOB date not null,
phone_number varchar(20) not null,
Educational_Level varchar(255) not null,
Home_Address varchar(255) not null,
Email_Address text not null);
alter table staffinfo add column next_kin varchar(200) not null;
show columns from staffinfo;
show columns from staff_info2;
show columns from book_store;