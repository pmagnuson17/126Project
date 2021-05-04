select count(App) from applications where rating = 5;

insert into people (id,gender,age) values (1001,'M',22);

update people set age = 23 where id = 1001;

select * from people where id = 1001;

select applications.app, people.age, people.gender from applications, reviews, people 
where applications.app = reviews.app and people.id = reviews.person_id and people.id = 150;

select applications.app from applications, reviews, people where applications.app = reviews.app 
and reviews.sentiment = 'Positive' and people.id = reviews.person_id and people.gender = 'F' and people.age < 20;