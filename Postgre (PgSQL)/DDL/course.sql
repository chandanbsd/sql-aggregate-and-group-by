
create table academia.course(
	id              int primary key generated always as identity,
	uuid            uuid generated always as identity,
	name            text,
	description     text,
	faculty_id      int references faculty(id),
	is_active       boolean
);
