drop table managers cascade constraint;

create table managers(
	managerID varchar2(20),
	managerPW varchar2(20) not null,
	managerName varchar2(20) not null,
	managerEmail varchar2(30),
	constraint manager_managerID_pk primary key(managerID)
);

insert into managers(managerID, managerPW, managerName, managerEmail)
values('admin','1234','yujeong','yujeong@naver.com');

select * from managers;

create or replace view month_view AS
select * from(
	select extract(month from check_in) as month,
	sum(male+female) as total
	from customer
	group by extract(month from check_in)
	order by extract(month from check_in)
);

select * from month_view;

