--���ű�
create table department
(
deptid number(4,0) not null,
dname varchar2(14),
loc varchar2(13),
memo varchar2(20),
primary key(deptid)
)
----------------------------------------
--ְλ��Ϣ��
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
--������Ա��
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
--������Ч��

---------------------------------------------------------
--�������ڱ�
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
--������Ա�䶯��Ϣ��
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
--�����û���Ϣ��
create table userinfo
(
    id number(4,0) not null,
    username varchar2(10),
    password varchar2(32),
    starus number(2,0),
    primary key(id)
)
---------------------------------------------------------------------
--����Ȩ�ޱ�
create table permission
(
    id number(4,0) not null enable,
    aclstate number(4,0) not null,
    moduleid number(4,0) not null,
    userid number(4,0) not null,
    primary key(id)
)


--1����department���в�������
insert into department (deptid,dname,loc,memo) values(1,'���»�','����', '��˾����֧��');
insert into department (deptid,dname,loc,memo) values(2,'�ܲð�','����', '��˾ս��ִ�м���Ӫ');
insert into department (deptid,dname,loc,memo) values(3,'ҵ�����','�Ϻ�', '��˾ҵ��չ�滮');
insert into department (deptid,dname,loc,memo) values(4,'Ͷ�ʷ�չ��','ɹ', '��˾Ͷ�ʷ���滮');

--2��job���в�������
insert into job(id,description,name,pay,deptid) values(1,'��˾������','���³�',100000,1);
insert into job(id,description,name,pay,deptid) values(2,'��˾ս��ִ�м���Ӫ','�ܲ�',500000,2);
insert into job(id,description,name,pay,deptid) values(3,'����ҵ������ⶨ����','����',20000,3);
insert into job(id,description,name,pay,deptid) values(4,'Э�������ճ�����','����',5000,4);

--3����employee���в�������
insert into employee(empid,age,badgeid,culturelevel,ename,familyplace,hireddate,idcard,image,memo,mobile,nationality,salary,sex,status,deptid,jobid)
values (1,40,'or100001','��ʿ','����','�㶫ʡ',to_date('20060125000000','yyyymmddhh24miss'),'4415222970112128231',hextoraw('00'),null,'13456545565','����',null,'��','��ְ',1,1);
insert into employee(empid,age,badgeid,culturelevel,ename,familyplace,hireddate,idcard,image,memo,mobile,nationality,salary,sex,status,deptid,jobid)
values (2,35,'or100002','˶ʿ','����','�㶫ʡ',to_date('20100116000000','yyyymmddhh24miss'),'4415211975110128435',hextoraw('00'),null,'13754136145','����',null,'��','��ְ',2,2);
insert into employee(empid,age,badgeid,culturelevel,ename,familyplace,hireddate,idcard,image,memo,mobile,nationality,salary,sex,status,deptid,jobid)
values (3,34,'or100003','��ѧ','�ֺ�','����ʡ',to_date('20101006000000','yyyymmddhh24miss'),'4415211976111145449',hextoraw('00'),null,'1375964789645','����',null,'��','��ְ',2,3);
insert into employee(empid,age,badgeid,culturelevel,ename,familyplace,hireddate,idcard,image,memo,mobile,nationality,salary,sex,status,deptid,jobid)
values (4,29,'or100004','��ѧ','��÷','����ʡ',to_date('20090604000000','yyyymmddhh24miss'),'4415211981011282431',hextoraw('00'),null,'13520489645','����',null,'Ů','��ְ',2,4);

--4����attendanceinfo���в�������
insert into attendanceinfo(attinfoid,absentdays,affairleavedays,attdate,holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,sickeavedays,empid)
values(1,4,5,to_char(sysdate,'yyyy-mm'),0,0,0,'ȫ��',0,21,0,4);
insert into attendanceinfo(attinfoid,absentdays,affairleavedays,attdate,holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,sickeavedays,empid)
values(3,0,0,to_char(sysdate,'yyyy-mm'),0,0,0,'ȫ��',0,21,0,3);



--��attendanceInfo��������
insert into attendanceInfo (attinfoid,absentdays,affairleavedays,attdate,
holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,
sickleavedays,empid) values (1,4,5,to_char(sysdate,'yyyy-mm'),0,0,0,
'����״����̫�ֹ�',0,21,0,4);


insert into attendanceInfo (attinfoid,absentdays,affairleavedays,attdate,
holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,
sickleavedays,empid) values (2,0,0,to_char(sysdate,'yyyy-mm'),0,0,0,'ȫ��',0,
21,0,4);


insert into attendanceInfo (attinfoid,absentdays,affairleavedays,attdate,
holidayotdays,lateminutes,leaveearlyminutes,memo,normalotdays,ondays,
sickleavedays,empid) values (3,0,0,to_char(sysdate,'yyyy-mm'),0,0,0,'ȫ��',0,
21,0,3);

--��UserInfo���в�������
insert into userInfo(id,password,username,status)
values(1,'manager','system',0);

insert into userInfo(id,password,username,status)
values(2,'tiger','scott',0);

--��permission���в�������
insert into permission(id,aclstate,moduleid,userid) values(1,15,1,1);
insert into permission(id,aclstate,moduleid,userid) values(2,15,2,1);
insert into permission(id,aclstate,moduleid,userid) values(3,15,3,1);
insert into permission(id,aclstate,moduleid,userid) values(4,15,4,1);

--��staffchangeinfo���в�������
insert into staffchangeinfo (id,empid,ename,newdname,newjobname,
oidname,oldjobname,status,transdate)values(1,2,'��÷'��'�ܲð�'��'�ܲþ���',
'�ܲ�����','Ͷ�ʹ���','����','��ְ',to_date('20110103000000','yyyymmddhh24miss'));

--��������
--1�������û��޸���Ϣ
update userinfo set password='admin123' where username='system';
--2�����ݹ�Ա����޸���ְ״̬
update employee set status='��ְ' where empid=1;
--3�����ݲ��ű���޸Ĳ��ŵ�ַ
update department set loc='�麣' where deptid=1;

--���ϲ�ѯ����
--1����ѯ��Ա��š���Ա���ơ����ű�š���������
select  e.empid e.name,d.deptid,d.dname  from employee e,department d 
where e.deptid=d.deptid;

--2����ѯ��Ա�Ŀ�����Ϣ
select e.empid,e.name a.* from employee e,attendanceInfo a 
where e.empid=a.empid;

--3����ѯ��Ա��Ч��Ϣ
select e.empid,e.ename,ee.* from employee e ,evaluation ee 
where e.empid=ee.empid;

--�ύ���ع���������ñ�����
--1��ȡ���Զ��ύ����,ɾ�����ű��Ϊ10�Ĳ���
set auto off;
delete from employeeee where empid=1;

--��department���в�������
insert into department(deptid,dname,loc,memo) values 
(5,'���²�','�麣����ȥ','������Ա);

sacepoint a;

commit;

