select*from aws
select*from w
--����һ���±� �����ϱ� ��Ҫ���е���Ϣ
create table dept3 as select* from dept where  1=2
--����һ����
create table w (
id integer ,
money integer,
aid integer
)
delete  aws where id=null;
--��������һ����
alter table aws add master  integer;
alter table aws add  monry integer;
alter table aws add  name varchar(5);
--�޸��е�����
alter table aws modify master char;
--ɾ��һ����
alter table aws drop column tame
--����һ��Լ��
alter table aws add constraint aa check(master in('a','b'));
--ɾ��Լ��
alter table aws drop constraint aa
--�����Ϣ
insert into aws values(1,111,'����');
insert into aws values(5,1,'��һ');
insert into aws values(6,1,'����');
insert into aws values(2,222,'����');
insert into aws values(3,333,'����');
insert into aws values(4,444,'����');
insert into w values(1,222222,2);
insert into w values(2,22222,1);
insert into w values(3,22222,2);
insert into w values(4,2222,3);
insert into w values(5,222222,1);
insert into w values(6,222,2);
insert into w values(7,22,1);
insert into w values(8,222,2);
insert into w values(9,222,3);
insert into w values(10,222,1);
--������ݣ�����������һ����
insert into dept3 select*from dept
--��һ�ű��в�ѯ�������ķֲ���
select a.id,a.name,w.monry,w.name from aws a,aws w where a.monry=w.id;
--��ѯmonry���� ����ж����ʾid��С��
select id,monry from(
select id, monry from aws order by  monry asc,id )
where rownum=1

select id,money,aid from w
select aid,avg(money) from w group by aid

select w.id,w.money from(select id,money,aid from w) w,(select aid,avg(money) from w group by aid) a where w.aid=a.aid and w.money>a.aid
