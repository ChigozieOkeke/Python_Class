use employee_details;
show tables from employee_details;
show columns from staff_information;
insert into staff_information (staff_id,staff_name,DOB,phone_number,Educational_Level,Home_Address,Email_Address,next_kin)
values (1,"Agozie Okeke","1920-08-24","+2347061833064","BSc","trt street","agozie@gmail.com","Steven Obi"),
(2,"Achudi","1923-04-27","+2347061833084","BSc","bens street","achudi@gmail.com","Steven Obi"),
(3,"Okechukwu","1920-03-21","+2347061873064","BSc","don street","oke@gmail.com","Steven Obi"),
(4,"Emeka","1920-08-04","+2347061733068","BSc","godson street","emeka@gmail.com","Steven Obi"),
(5,"Dickson","1920-08-24","+2347069833067","BSc","Ay street","dick@gmail.com","Steven Obi"),
(6,"Godwin","1920-08-24","+2348061833060","BSc","faith street","godwin@gmail.com","Steven Obi"),
(7,"John","1920-08-24","+2347061867064","BSc","ny street","john@gmail.com","Steven Obi"),
(8,"Carl","1920-08-24","+2347061866064","BSc","Ess street","carl@gmail.com","Steven Obi"),
(9,"Peter","1920-08-24","+2347061833064","BSc","Fat street","peter@gmail.com","Steven Obi"),
(10,"Paul","1920-08-24","+2347061837964","BSc","Agozie street","paul@gmail.com","Steven Obi"),
(11,"Blessing","1920-08-24","+2347044833064","BSc","Day street","blessing@gmail.com","Steven Obi"),
(12,"Chinwe","1920-08-24","+2348061883064","BSc","Dan street","chinwe@gmail.com","Steven Obi");

select * from staff_information;
select staff_id,staff_name,DOB,Educational_Level from staff_information;
update staff_information set Educational_Level = "HND" where staff_id = 7;
delete from staff_information where staff_id=5;