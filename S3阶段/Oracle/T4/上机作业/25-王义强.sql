--���ؾ���ֵ
  select abs(-111) from dual
--����ȡ��
  select ceil(1.21) from dual
--����ȡ��
  select floor(-111) from dual
--m��n�η�
  select power(2,3) from dual
--ȡ��
  select mod(10,3) from dual
--����ƽ����
  select sqrt(9) from dual
--��ȡn�������ŷ���-1��1
  select sign(-11) from dual
    
--���������ַ���
  select concat('m','n') from dual
--��ȡ����n��ʼ��k���ַ�
  select substr('qweqwe',2,2) from dual
--ȥ����ո񡢺��ֵΪҪȥ����
  select ltrim('asdasda','as') from dual
--������ĸ��д
  select upper('asdzxc') from dual
--������ĸСд
  select lower('SDFSDXC') from dual
--����ĸ��д
  select initcap('asdzxc') from dual 
--������n�滻��m
  select translate('asdzxcasd','a','w') from dual 
--��ѯm������
  select instr('asdzxc','d') from dual
--��k�ַ����滻m�ַ��� kʡ��ɾ��m
  select replace('asdzxc','sd','ww') from dual
--��ȡ�����������������
  select months_between(sysdate,to_date('2013-1-1','yyyy-MM-dd')) from dual
--��ȡָ�����������·ݵ����һ��
  select last_day(sysdate) from dual
--��ȡָ�����������ܵĵ�n������
  select next_day(sysdate,5) from dual
--��ָ�������ڼ���ָ����������������
  select add_months(sysdate,15) from dual
--������ת��Ϊmָ���ĸ�ʽ
  select to_char(sysdate,'yyyy-mm-dd am hh:mi-ss') from dual
--���ַ���ת��Ϊ��ֵ
  select to_number('$123','$999') from dual
  
  create table w(
  sex char(2)
  )
  drop table w
  select*from w 
  insert into w values ('ff');
  insert into w values ('mm');
  insert into w values ('ff');
  insert into w values ('mn');
  insert into w values ('ff');
  insert into w values ('mm');
  select  case sex when 'f' then '��' when 'm' then 'Ů' end from w
  update w set sex=( select translate('ff','f','g') from dual) where sex='ff'
 
