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