create table dept(
      did integer primary key ,
      dname varchar2(20),
      manager integer,
      tel varchar2(30),
      master integer
);

create table emp(
      eid integer primary key ,
      ename varchar2(20),
      sex varchar2(1),
      did integer
);
create table history(
      hid integer primary key ,
      startdate date, -- ��ְʱ��
      enddate date,
      place varchar2(50),
      job varchar2(20),
      eid integer 
);
--�����±� ���Ʊ�ṹ������������
create table newemp3 as 
select ename,sex,hire from emp where 1=2;

--�޸ı�ṹ alter

--���
alter table emp add hire date;
alter table emp add sar number(8,2);
alter table emp add tel integer;

--ɾ��
alter table emp drop column tel ;
--�޸�
alter table emp modify sex varchar2(2);
alter table history modify startdate timestamp;
alter table history modify enddate timestamp;
--��Ӽ��Լ��
alter table emp add constraint sexvalue check(sex in('m','n'));
--ɾ��Լ��
alter table emp drop constraint sexvalue;

ɾ�����ݱ�
drop table history;


insert into dept values(1,'��Ϸ��',2,'9999',0); 
insert into dept values(2,'���ղ�',3,'8888',0); 
insert into dept values(3,'���Ȳ�',4,'7777',1); 
insert into dept values(4,'��ֵ��',5,'6666',1); 
insert into dept values(5,'���˲�',6,'5555',1);
 
select * from dept;
select * from emp

insert into emp values(1,'����','m',1,sysdate-111,8000.00);
insert into emp values(6,'С��','m',1,sysdate-111,7500.00);
insert into emp values(2,'��Ϧ','n',2,sysdate-100,6500.88);
insert into emp values(3,'ɵ��','n',3,sysdate-12,8000.00);

insert into emp values(4,'ɧ��','m',3,'11-1��-15',8000.00); 

insert into emp values(5,'˾��','m',3,to_date('2018-01-15','yyyy-mm-dd'),8000.00);

update emp set sar = sar+50;
update emp set sar = sar+1000 where sar<7000;

update emp set hire = to_date('2018-01-15','yyyy-mm-dd')where ename='˾��';

delete emp where ename='˾��';

select * from emp order by sar asc;

select * from emp order by sar desc,did asc;

select * from emp where sar between 7000 and 8000;

select * from emp where did in (1,2);

select * from emp where ename like '��%';

select * from emp where sex='m' and sar>8000;

select avg(sar) as ƽ��,max(sar),min(sar) from emp;

select count(eid),sum(sar) from emp;

select distinct(did) from emp;

select d.dname,max(e.sar),avg(e.sar)
from emp e,dept d
where d.did=e.eid
group by d.dname;

select d.dname,max(e.sar),avg(e.sar)
from emp e,dept d
where d.did=e.eid
group by d.dname
having avg(e.sar)>8000;

select * from emp where sar>8000
union 
select * from emp where did=2;

select * from (select rownum r,e.* from emp e)  where r>2 and r<4;

select * from emp 
minus
select * from newemp3;

select * from emp 
intersect
select * from newemp3;

select ename 

