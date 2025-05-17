--Create schema
create schema if not exists academia;

-- Create student table
create table if not exists academia.student(
	id              int  primary key generated always as identity,
	uuid            uuid default gen_random_uuid(),
	first_name      text,
	last_name       text,
	email           text
);

-- Create faculty table
create table if not exists academia.faculty(
	id               int primary key generated always as identity,
	uuid             uuid default gen_random_uuid(),
	first_name       text,
	last_name        text,
	email            text
);

-- Create course table
create table if not exists academia.course(
	id              int primary key generated always as identity,
	uuid            uuid default gen_random_uuid(),
	name            text,
	description     text,
	faculty_id      int references faculty(id),
	is_active       boolean
);

-- Create enrollment table
create table if not exists academia.enrollment(
	id              int primary key generated always as identity,
	uuid            uuid default gen_random_uuid(),
	course_id       int references academia.course(id),
	student_id      int references academia.student(id),
	grade           text
);

