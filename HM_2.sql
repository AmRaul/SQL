-- 1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
[mysql]
user=root
password=

-- Без создания alias не получалось войти 
alias mysql=/usr/local/mysql/bin/mysql

-- 2. Сздайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
CREATE DATABASE example;
USE example;
CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(255));
/q


-- 3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
alias mysqldump=/usr/local/mysql/bin/mysqldump
mysqldump example > sample.sql
CREATE DATABASE sample;
/q
mysqldump sample < sample.sql
