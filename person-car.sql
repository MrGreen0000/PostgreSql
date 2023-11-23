create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50),
	car_id BIGINT REFERENCES car (id),
	UNIQUE(car_id)
);

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Edgardo', 'Wooler', 'ewooler0@about.com', 'Male', '1982-05-28', 'China');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Jordan', 'Mettericke', 'jmettericke1@i2i.jp', 'Male', '2011-12-10', 'Russia');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Urbanus', 'Rentenbeck', 'urentenbeck2@abc.net.au', 'Male', '2000-05-16', 'Brazil');

insert into car (id, make, model, price) values (1, 'Isuzu', 'Trooper', '24125.37');
insert into car (id, make, model, price) values (2, 'Cadillac', 'STS', '99732.15');