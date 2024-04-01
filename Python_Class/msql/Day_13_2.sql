use employee_details;
##basically renaming a table in sql.
rename table staffinfo to staff_information;
select * from studentsperformance;
select distinct parental_level_of_education from studentsperformance;
select parental_level_of_education from studentsperformance;
## counting values in columns.
select parental_level_of_education, count(parental_level_of_education) as result from studentsperformance group by parental_level_of_education;
select parental_level_of_education, avg(math_score) as result from studentsperformance group by parental_level_of_education;
select gender, max(math_score) as result from studentsperformance group by gender;
select gender, min(math_score) as result from studentsperformance group by gender;
select gender, parental_level_of_education, math_score, min(math_score) as result from studentsperformance group by gender,parental_level_of_education,math_score;
select gender,parental_level_of_education, min(math_score) as result from studentsperformance group by gender,parental_level_of_education;
select gender, parental_level_of_education, max(math_score) as result from studentsperformance group by gender,parental_level_of_education;
select gender, sum(math_score) as result from studentsperformance group by gender;
## control flow cnditional statement
select *, if(gender="male", true,false) from studentsperformance;
select *, if(gender="male", true,null) from studentsperformance;
select *,
      case
		when gender="male" then true
        end as is_male
from studentsperformance;
select *, ifnull(writing_score,math_score) from studentsperformance;
select *, nullif(writing_score,math_score) from studentsperformance;   
alter table studentsperformance add column average_score float not null;
select * from studentsperformance;
set sql_safe_updates=0; ## this is used when there is need for update
update studentsperformance set average_score= round((math_score + reading_score + writing_score)/3,2);
select *,
case
   when average_score >= 70 and average_score <= 100 then "A"
   when average_score >= 60 and average_score <= 70 then "B"
   when average_score >= 50 and average_score <= 60 then "C"
   when average_score >= 40 and average_score <= 50 then "D"
   else "f"
end as Grade_point
from studentsperformance;   
select * from studentsperformance where math_score > 80 and race_ethnicity = "group B";
select * from studentsperformance where math_score > 80 or race_ethnicity = "group B";
select * from studentsperformance where average_score between 70 and 85;
select * from studentsperformance where parental_level_of_education like "h%";
select * from studentsperformance where parental_level_of_education like "some college";
select * from studentsperformance where gender like "male";
select * from studentsperformance where gender like "male" and lunch like "standard";
select * from studentsperformance where gender like "male" and lunch like "standard" and parental_level_of_education like "some college";
select gender,parental_level_of_education,lunch  from studentsperformance where parental_level_of_education like "%ge";
select * from studentsperformance where parental_level_of_education like "_____c%";
select * from studentsperformance where parental_level_of_education like "_________D%";
select * from studentsperformance;
select parental_level_of_education from studentsperformance;
select parental_level_of_education from studentsperformance where parental_level_of_education like "___________d%";