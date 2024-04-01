use agozie;
show tables from agozie;
show columns from result_movement_export_anambra_june_2022;
select * from result_movement_export_anambra_june_2022;

update result_movement_export_anambra_june_2022 set IP = CCFN;
select FACILITY_NAME,LAB_NAME,TEST_TYPE,DISPATCHER_PERSONNEL FROM result_movement_export_anambra_june_2022;
select distinct FACILITY_NAME from result_movement_export_anambra_june_2022;
select TEST_TYPE, count(TEST_TYPE) as number_of_TEST_TYPE from result_movement_export_anambra_june_2022 group by TEST_TYPE;
select TEST_TYPE, max(sputum) as result from result_movement_export_anambra_june_2022 group by TEST_TYPE;
alter table result_movement_export_anambra_june_2022 add serial_number integer not null first;
alter table result_movement_export_anambra_june_2022 modify column serial_number integer not null auto_increment primary key;