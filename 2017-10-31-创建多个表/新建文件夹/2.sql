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