--Create schema
create schema academia;

-- Create student table
create table academia.student(
	id              int  primary key generated always as identity,
	uuid            uuid default gen_random_uuid(),
	first_name      text,
	last_name       text,
	email           text
);

-- Create faculty table
create table academia.faculty(
	id               int primary key generated always as identity,
	uuid             uuid default gen_random_uuid(),
	first_name       text,
	last_name        text,
	email            text
);

-- Create course table
create table academia.course(
	id              int primary key generated always as identity,
	uuid            uuid default gen_random_uuid(),
	name            text,
	description     text,
	faculty_id      int references faculty(id),
	is_active       boolean
);

-- Create enrollment table
create table academia.enrollment(
	id              int primary key generated always as identity,
	uuid            uuid default gen_random_uuid(),
	course_id       int references course(id),
	student_id      int references student(id),
	grade           text
);

