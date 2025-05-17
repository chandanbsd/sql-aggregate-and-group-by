insert into academia.student (first_name, last_name, email)
values ('Bruce', 'Wayne', 'b.wayne@dc.com'),
       ('Chandan', 'Bangalore', 'chandanbsd@chandanbsd.com'),
       ('Steven', 'Strange', 'drstrange@marvel.com');


insert into academia.faculty (first_name, last_name, email)
values ('Alan', 'Turing', 'a.turing@turning-machines.com'),
	   ('Srinivasa', 'Ramanujan', 's.ramanujan@mathematics.com'),
	   ('Kenneth', 'Thompson', 'b.wayne@clangandunix.com'),
	   ('Dennis', 'Ritchie', 'd.ritchie@clangandunix.com');

insert into academia.course (name, description, faculty_id, is_active)
values
('Cryptography', 'Tales from breaking enigma', 1, FALSE),
('Discovery not Invention', 'The beauty of prime numbers', 2, FALSE),
('Poems for the computer', 'Introduction to C', 3, TRUE),
('Everything is a file', 'UNIX and C', 4, TRUE);

