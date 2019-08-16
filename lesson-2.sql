/*
 Задание: Пусть в таблице catalogs базы данных shop в строке name 
могут находиться пустые строки и поля принимающие значение NULL. 
 Напишите запрос, который заменяет все такие поля на строку ‘empty’. 
 Помните, что на уроке мы установили уникальность на поле name. 
 Возможно ли оставить это условие? Почему?
*/
use shop;
drop table if exists catalogs;
create table catalogs(
	id SERIAL primary key,
	name VARCHAR(255) unique
);
INSERT INTO catalogs VALUES (NULL, 'Процессоры');
INSERT INTO catalogs VALUES (NULL, 'Мат.платы');
INSERT INTO catalogs VALUES (NULL, 'Видеокарты');
INSERT INTO catalogs VALUES ();
INSERT INTO catalogs VALUES ();

alter table catalogs drop index name;
update catalogs set name = 'empty' where name is NULL;

select * from catalogs;

/*
Если не сбросить индекс unique ничего не получится - будет ошибка.
Нарушается правило уникальности записей
*/