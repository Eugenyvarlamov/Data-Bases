/*
 �������: ����� � ������� catalogs ���� ������ shop � ������ name 
����� ���������� ������ ������ � ���� ����������� �������� NULL. 
 �������� ������, ������� �������� ��� ����� ���� �� ������ �empty�. 
 �������, ��� �� ����� �� ���������� ������������ �� ���� name. 
 �������� �� �������� ��� �������? ������?
*/
use shop;
drop table if exists catalogs;
create table catalogs(
	id SERIAL primary key,
	name VARCHAR(255) unique
);
INSERT INTO catalogs VALUES (NULL, '����������');
INSERT INTO catalogs VALUES (NULL, '���.�����');
INSERT INTO catalogs VALUES (NULL, '����������');
INSERT INTO catalogs VALUES ();
INSERT INTO catalogs VALUES ();

alter table catalogs drop index name;
update catalogs set name = 'empty' where name is NULL;

select * from catalogs;

/*
���� �� �������� ������ unique ������ �� ��������� - ����� ������.
���������� ������� ������������ �������
*/