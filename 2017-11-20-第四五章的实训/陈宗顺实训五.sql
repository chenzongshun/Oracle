conn system/123@orcl;

--给予创建视图的权限
grant create view to stu_user17;

conn stu_user17/stu123@orcl;

--创建一个只读的视图
create view staffchangeinfo_view as select empid,olddname,oldjobname,newjobname from staffchangeinfo with read only;
--验证
select*from staffchangeinfo_view;


drop view attinfo_year_view;

--创建视图按员工信息统计，统计请假的次数，迟到超过五次或者5分钟的   考勤日期在某一年的年头到年尾  并且按员工号进行降序排列
create view attinfo_year_view as select 
	empid 员工号,sum(affairleavedays)+sum(sickleavedays) 请假天数,sum(absentdays) 旷工天数,
	sum(lateminutes) 迟到天数 from attendanceinfo 
	where attdate /*between 2000-01-01 and 2010-12-31*/
		like '%2017%'/*年份*/ or attdate like '%2017-02%'/*或者月份*/ group by empid 	
	having sum(affairleavedays)+sum(sickleavedays)>=5 
	    or sum(absentdays)>=5 or sum(lateminutes)>=5 order by empid desc;
		
--验证
select * from attinfo_year_view;


