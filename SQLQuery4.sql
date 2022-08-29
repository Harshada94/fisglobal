create table books(id Integer Primary key ,tittle varchar(20),author varchar(20),isbn Numeric(20) Unique,published_date datetime);
insert into books values(1,'My First SQl Book','Marry parker',981483029127,'2012-02-22 12:08:17.45');
insert into books values(2,'My Second SQl Book','john Mayer',857300923713, '1972-07-03 09:22:45.17');
insert into books values(3,'My Third SQl Book','Carry Fint',523120967812, '2015-10-18 14:05:44.44');
select * from books where author like '%er';

create table reviews(id Integer Foreign key (id) references books(id) ,bk_id Integer,content varchar(20),reviewers varchar(20),rating Integer,published_date datetime);

insert into reviews values(1,1,'My First review','John Smith',4,'2017-12-10 5:20:17.45');


insert into reviews values(2,2,'My Second review','John Smith',5,'2017-10-10 5:20:17.45');


insert into reviews values(3,2,'Another review','Alley Walkar',3,'2017-03-10 5:20:17.45');


