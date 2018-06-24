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
desciption varchar2(20),
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
create table evaluation
(
    id number(4) not null,
    cause varchar2(50),
    evadate timestamp,
    fines number(7,2) not null enable,
    ip varchar2(20),
    overalleva varchar2(50),
    reward number(7,2) not null enable,
    subject varchar2(20),
    deptid number(4),
    empid number(4),
    primary key(id),
    constraint fk444 foreign key(empid) references employee(empid),
    constraint fk123141 foreign key(deptid) references department(deptid)
)
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
    empid nunber(4,0),
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


