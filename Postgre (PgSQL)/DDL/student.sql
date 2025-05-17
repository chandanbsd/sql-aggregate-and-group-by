
create table academia.student(
	id              int  primary key generated always as identity,
	uuid            uuid generated always as identity,
	first_name      text,
	last_name       text,
	email           text
);
