use employee_details;
select * from studentsperformance;
select * from studentsperformance where lunch like "________%";
alter table studentsperformance add id integer not null first;
alter table studentsperformance modify column id integer not null auto_increment primary key;
## creating a table from an existing table ie copying from an existing table to a new table
create table performance_one select id,gender,race_ethnicity,parental_level_of_education,lunch,test_preparation_course from studentsperformance;
select * from performance_one;
create table performace_two select id,math_score,reading_score,writing_score,average_score from studentsperformance;
select * from performace_two;
## joining different tables together.
select performance_one.id,performance_one.gender,performance_one.lunch,performace_two.math_score,performace_two.reading_score,
performace_two.average_score from performance_one inner join performace_two on performance_one.id=performace_two.id;
## right Joining
select performance_one.id,performance_one.gender,performance_one.lunch,performace_two.math_score,performace_two.reading_score,
performace_two.writing_score,performace_two.average_score from performance_one right join performace_two on performance_one.id=performace_two.id;
## left Joining
select performance_one.id,performance_one.gender,performance_one.lunch,performace_two.math_score,performace_two.reading_score,
performace_two.writing_score,performace_two.average_score from performance_one left join performace_two on performance_one.id=performace_two.id;
## cross joining
select * from performance_one cross join performace_two;