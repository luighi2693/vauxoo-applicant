-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
	id serial PRIMARY KEY, 
	name VARCHAR (50) NOT NULL,
    description VARCHAR (200)
);

CREATE TABLE employee
(
  id serial PRIMARY KEY,
  first_name VARCHAR (50) NOT NULL,
  last_name VARCHAR (50) NOT NULL,
  id_department serial NOT NULL,
  CONSTRAINT employee_id_department_fkey FOREIGN KEY (id_department)
      REFERENCES employee_department (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE employee_hobby (
);

INSERT INTO employee_department(name, description)
    VALUES ('System','System department');

INSERT INTO employee_department(name, description)
    VALUES ('Ingeniering','Ingeniering department');

INSERT INTO employee_department(name, description)
    VALUES ('math','math department');

INSERT INTO employee_department(name, description)
    VALUES ('production','production department');

INSERT INTO employee_department(name)
    VALUES ('test', 'test department');

INSERT INTO employee_department(name, description)
    VALUES ('business','business department');

INSERT INTO employee(first_name, last_name, id_department)
    VALUES ('luis','Rodriguez',1);

INSERT INTO employee(first_name, last_name, id_department)
    VALUES ('Alex','Mata',2);

INSERT INTO employee(first_name, last_name, id_department)
    VALUES ('Juan','Villanueva',3);

INSERT INTO employee(first_name, last_name, id_department)
    VALUES ('Patricia','Matheus',4);



-- ...
