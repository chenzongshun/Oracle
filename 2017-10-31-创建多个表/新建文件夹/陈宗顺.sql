--部门表
create table department
(
deptid number(4,0) not null,
dname varchar2(14),
loc varchar2(13),
memo varchar2(20),
primary key(deptid)
)
----------------------------------------
--职位信息表
create table job
(
ID number(4,0) not null enable,
description varchar2(20),
name varchar2(10),
pay number(10,2) not null enable,
deptid number(4,0),
primary key(id),
constraint fk1 foreign key(deptid) references department(deptid)
)

------------------------------------------
--创建雇员表
create table employee
(
empid number(4,0) not null enable,
badgeid varchar2(20),
culturelevel varchar(10),
ename varchar2(10),
familyplace varchar2(20),
hiredate date,
idcard varchar2(20),
image blob,
memo varchar2(50),
mobile varchar2(15),
nationality varchar2(10),
salary number(10,2),
sex varchar2(2),
status varchar2(4),
deptid number(4,0),
jobid number(4,0),
primary key(empid),
constraint fk_employee foreign key(deptid) references department(deptid),
constraint fk_Job foreign key(jobid) references job(id)
)
------------------------------------------------------
--创建绩效表

---------------------------------------------------------
--创建考勤表
create table attendanceinfo
(
    attinfoid number(4,0) not null,
    absentdays number(2,0) not null,
    affairleavedays number(2,0) not null,
    attdate varchar2(10),
    holidayotdays number(2,0) not null,
    lateminutes number(3,0) not null,
    leaveearlyminutes number(3,0) not null,
    memo varchar2(50),
    normalotdays number(2,0) not null,
    ondays number(2,0) not null,
    sickleavedays number(2,0) not null,
    empid number(4,0),
    primary key(attinfoid),
    constraint fk32424 foreign key(empid) references employee(empid)
)
--------------------------------------------------------------------
--创建人员变动信息表
create table staffchangeinfo
(
    id number(4,0) not null,
    empid number(4,0) not null,
    ename varchar2(10),
    newdname varchar2(20),
    newjobname varchar2(20),
    olddname varchar2(10),
    oldjobname varchar2(10),
    status varchar2(4),
    transdate date,
    primary key(id)
)
---------------------------------------------------------------------
--创建用户信息表
create table userinfo
(
    id number(4,0) not null,
    username varchar2(10),
    password varchar2(32),
    starus number(2,0),
    primary key(id)
)
---------------------------------------------------------------------
--创建权限表
create table permission
(
    id number(4,0) not null enable,
    aclstate number(4,0) not null,
    moduleid number(4,0) not null,
    userid number(4,0) not null,
    primary key(id)
)


--1、向department表中插入数据
insert into department (deptid,dname,loc,memo) values(1,'董事会','北京', '公司决策支持');
insert into department (deptid,dname,loc,memo) values(2,'总裁办','北京', '公司战略执行及经营');
insert into department (deptid,dname,loc,memo) values(3,'业务管理部','上海', '公司业务发展规划');
insert into department (deptid,dname,loc,memo) values(4,'投资发展部','晒', '公司投资方向规划');

--2向job表中插入数据
insert into job(id,description,name,pay,deptid) values(1,'公司决策者','董事长',100000,1);
insert into job(id,description,name,pay,deptid) values(2,'公司战略执行及经营','总裁',500000,2);
insert into job(id,description,name,pay,deptid) values(3,'负责业务策略拟定工作','经理',20000,3);
insert into job(id,description,name,pay,deptid) values(4,'协助经理日常事务','秘书',5000,4);

--3、向employee表中插入数据
insert into employee(empid,age,badgeid,culturelevel,ename,familyplace,hireddate,idcard,image,memo,mobile,nationality,salary,sex,status,deptid,jobid)
values (1,40,'or100001','博士','关云','广东省',to_date('20060125000000','yyyymmddhh24miss'),'4415222970112128231',hextoraw('00'),null,'13456545565','汉族',null,'男','在职',1,1);
insert into employee(empid,age,badgeid,culturelevel,ename,familyplace,hireddate,idcard,image,memo,mobile,nationality,salary,sex,status,deptid,jobid)
values (2,35,'or100002','硕士','孙岩','广东省',to_date('20100116000000','yyyymmddhh24miss'),'4415211975110128435',hextoraw('00'),null,'13754136145','汉族',null,'男','在职',2,2);
insert into employee(empid,age,badgeid,culturelevel,ename,familyplace,hireddate,idcard,image,memo,mobile,nationality,salary,sex,status,deptid,jobid)
values (3,34,'or100003','大学','林浩','湖南省',to_date('20101006000000','yyyymmddhh24miss'),'4415211976111145449',hextoraw('00'),null,'1375964789645','汉族',null,'男','在职',2,3);
insert into employee(empid,age,badgeid,culturelevel,ename,familyplace,hireddate,idcard,image,memo,mobile,nationality,salary,sex,status,deptid,jobid)
values (4,29,'or100004','大学','李梅','海南省',to_date('20090604000000','yyyymmddhh24miss'),'4415211981011282431',hextoraw('00'),null,'13520489645','汉族',null,'女','在职',2,4);

--4、向attendanceinfo表中插入数据
insert into attendanceinfo(attinfoid,absentdays,affairleavedays,attdate,holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,sickeavedays,empid)
values(1,4,5,to_char(sysdate,'yyyy-mm'),0,0,0,'全勤',0,21,0,4);
insert into attendanceinfo(attinfoid,absentdays,affairleavedays,attdate,holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,sickeavedays,empid)
values(3,0,0,to_char(sysdate,'yyyy-mm'),0,0,0,'全勤',0,21,0,3);



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

