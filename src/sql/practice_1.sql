create database test_db1;
use test_db1;
create table testtb1 (
                         test1 int not null auto_increment ,
                         test2 varchar(255),
                         test3 varchar(255),
                         primary key (test1)
);
insert into testtb1(test2,test3) value ('huy','cc');
alter table testtb1
    add column TesT4 varchar(45);
update testtb1
set test4 = 'test case'
where test1 = 1;
delete from testtb1
where test1 = 2;