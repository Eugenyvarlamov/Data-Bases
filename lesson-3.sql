drop database if exists example;
create database example;
use example;
drop database if exists users;
create table users(
	id SERIAL primary key,
	created_at DATETIME,
	updated_at DATETIME
);

insert into users values
	(),
	(),
	();

-- select * from users;

update users set created_at=now(), updated_at=now();

select * from users;