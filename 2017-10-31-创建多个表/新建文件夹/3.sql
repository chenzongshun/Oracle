--向attendanceInfo插入数据
insert into attendanceInfo (attinfoid,absentdays,affairleavedays,attdate,
holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,
sickleavedays,empid) values (1,4,5,to_char(sysdate,'yyyy-mm'),0,0,0,
'出勤状况不太乐观',0,21,0,4);


insert into attendanceInfo (attinfoid,absentdays,affairleavedays,attdate,
holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,
sickleavedays,empid) values (2,0,0,to_char(sysdate,'yyyy-mm'),0,0,0,'全勤',0,
21,0,4);


insert into attendanceInfo (attinfoid,absentdays,affairleavedays,attdate,
holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,
sickleavedays,empid) values (3,0,0,to_char(sysdate,'yyyy-mm'),0,0,0,'全勤',0,
21,0,3);

--向UserInfo表中插入数据
insert into userInfo(id,password,username,status)
values(1,'manager','system',0);

insert into userInfo(id,password,username,status)
values(2,'tiger','scott',0);

--向permission表中插入数据
insert into permission(id,aclstate,moduleid,userid) values(1,15,1,1);
insert into permission(id,aclstate,moduleid,userid) values(2,15,2,1);
insert into permission(id,aclstate,moduleid,userid) values(3,15,3,1);
insert into permission(id,aclstate,moduleid,userid) values(4,15,4,1);

--向staffchangeinfo表中插入数据
insert into staffchangeinfo (id,empid,ename,newdname,newjobname,
oidname,oldjobname,status,transdate)values(1,2,'李梅'，'总裁办'，'总裁经理',
'总裁助理','投资管理部','秘书','在职',to_date('20110103000000','yyyymmddhh24miss'));

--更新数据
--1、根据用户修改信息
update userinfo set password='admin123' where username='system';
--2、根据雇员编号修改任职状态
update employee set status='离职' where empid=1;
--3、根据部门编号修改部门地址
update department set loc='珠海' where deptid=1;

--联合查询数据
--1、查询雇员编号、雇员名称、部门编号、部门名称
select  e.empid e.name,d.deptid,d.dname  from employee e,department d 
where e.deptid=d.deptid;

--2、查询雇员的考勤信息
select e.empid,e.name a.* from employee e,attendanceInfo a 
where e.empid=a.empid;

--3、查询雇员绩效信息
select e.empid,e.ename,ee.* from employee e ,evaluation ee 
where e.empid=ee.empid;

--提交、回滚事物和设置保留点
--1、取消自动提交事物,删除部门编号为10的部门
set auto off;
delete from employeeee where empid=1;

--向department表中插入数据
insert into department(deptid,dname,loc,memo) values 
(5,'人事部','珠海金湾去','管理人员);

sacepoint a;

commit;

