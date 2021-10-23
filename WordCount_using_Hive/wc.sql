drop database if exists abc CASCADE;
create database abc;
use abc;
create table wc (text string);
load data local inpath 'Desktop/a.txt' overwrite into table wc;
select words , COUNT(*) from wc
lateral view explode(split(text,' '))
xtable as words
group by words;
