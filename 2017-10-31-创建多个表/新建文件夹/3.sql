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

