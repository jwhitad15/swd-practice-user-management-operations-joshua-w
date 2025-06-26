-- inserted data from the lesson into my 'users' table
INSERT INTO users (username, firstName, lastName, age) VALUES 
	('asmith', 'Alice', 'Smith', 20),
	('bdoe', 'Bob', 'Doe', 33),
	('cjohnson', 'Charlie', 'Johnson', 41),
	('dlee', 'David', 'Lee', 19),
	('ejones', 'Eve', 'Jones', 30),
	('fkim', 'Frank', 'Kim', 15),
	('gwhite', 'Grace', 'White', 22),
	('hwang', 'Henry', 'Wang', 19),
	('ijones', 'Ivy', 'Jones', 50),
	('jdoe', 'John', 'Doe', 65),
	('klee', 'Kevin', 'Lee', 62),
	('lchen', 'Linda', 'Chen', 24),
	('mlee', 'Michael', 'Lee', 29),
	('nkim', 'Nancy', 'Kim', 18),
	('ojohnson', 'Oscar', 'Johnson', 40),
	('pchen', 'Peter', 'Chen', 55),
	('qwang', 'Quincy', 'Wang', 28),
	('rjones', 'Rachel', 'Jones', 37),
	('slee', 'Sam', 'Lee', 21),
	('tkim', 'Tina', 'Kim', 26);

-- displayed all data from users table
SELECT * FROM users;

-- series of updates to my users table based on the tables' column parameters
UPDATE users SET firstName = 'Samantha' WHERE username = 'slee';
UPDATE users SET username = 'HeWang' WHERE firstName = 'Henry';
UPDATE users SET lastName = 'Wang!' WHERE lastName = 'Wang';

-- used DELETE command to delete users with the usernames 'jdoe' or 'fkim'
DELETE FROM users WHERE (username = 'jdoe' OR username = 'fkim' );

-- created a new variable 'fullUser' that combines the values from the username, firstName, & lastName columns
SELECT concat(username, ': ', firstName, lastName) AS fullUser FROM users;

-- created a new variable 'ageIn2030' which selects a user by username and adds the age value to 4 to represent the age that person will be in the year 2030.
SELECT username, age + 4 AS ageIn2030 FROM users;

-- select all of the data from the 'users' table where the customer's last name is 'Wang' and the first names are 'Henry' or 'Quincy'
SELECT * FROM users WHERE lastName = 'Wang' AND (firstName = 'Henry' OR firstName = 'Quincy');

-- select all of the data from the 'users' table, but only starting from row #3 will it select & order 12 rows of data in ascending fashion
SELECT * FROM users ORDER BY lastName ASC LIMIT 12 OFFSET 2;

COMMIT;
