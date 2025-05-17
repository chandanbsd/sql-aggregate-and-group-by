
create table academia.enrollment(
	id              int primary key generated always as identity,
	uuid            uuid generated always as identity,
	course_id       int references course(id),
	student_id      int references student(id),
	grade           text
);
