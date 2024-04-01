use employee_details;
select * from studentsperformance;
select * from studentsperformance where lunch like "________%";
alter table studentsperformance add id integer not null first;
alter table studentsperformance modify column id integer not null auto_increment primary key;