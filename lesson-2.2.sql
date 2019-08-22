/*Спроектируйте базу данных, которая позволяла бы организовать хранение медиа-файлов, 
загружаемых пользователем (фото, аудио, видео). Сами файлы будут храниться в файловой системе, 
а база данных будет хранить только пути к файлам, названия, описания, ключевых слов и принадлежности 
пользователю.*/

drop database if exists files;
create database files;
use files;
drop table if exists file_user;
create table file_user(
	id SERIAL primary key,
	name VARCHAR(50)
);

drop table if exists files;
create table files(
	id SERIAL primary key,
	name VARCHAR(255) unique,
	file_path VARCHAR(255),
	for_user_access BIGINT unsigned not null,
	created_at datetime default now(),
	updated_at datetime default now(),
	
	foreign key (for_user_access) references file_user(id)
);

drop table if exists files_tags;
create table files_tags(
	id SERIAL primary key,
	file_description TEXT,
	tags ENUM('video', 'audio', 'photo'),
	
	foreign key (id) references files(id)
);



/*
drop table if exists file_user;
create table file_user(

);
*/