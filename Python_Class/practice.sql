create database Agozie;
use agozie;
show columns from weekly_expenditure;
insert into weekly_expenditure (serial_number,Monday_expenditure,Tuesday_expenditure,Wedneday_expenditure,Thursday_expenditure,Friday_expenditure,Saturday_expenditure,Sunday_expenditure,Item_purchased,Date_Time)
values(1,2000,3000,2400,4000,3400,5000,5500,"pot","2024-01-1"),
(2,2000,3000,2400,4000,3400,5000,5500,"pot","2024-01-2"),
(3,2000,3000,2400,4000,3400,5000,5500,"pot","2024-01-3"),
(4,2000,3000,2400,4000,3400,5000,5500,"pot","2024-01-4"),
(5,2000,3000,2400,4000,3400,5000,5500,"pot","2024-01-5");
select * from weekly_expenditure;
select Monday_expenditure, count(Monday_expenditure) as result from weekly_expenditure group by Monday_expenditure;
select Monday_expenditure,Tuesday_expenditure, sum(Monday_expenditure), sum(Tuesday_expenditure) as result from weekly_expenditure group by Monday_expenditure,Tuesday_expenditure;