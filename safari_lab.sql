DROP TABLE animals;
DROP TABLE enclosures;
DROP TABLE staff;
DROP TABLE assignments;

CREATE TABLE enclosures (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,

    closedForMaintenance BOOLEAN
);

INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Big Cat Field', 20, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Monkey Palace', 18, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Bunny Hut', 16, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Wolf Cave', 14, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Big Bird Nest', 12, FALSE);

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)
);

SELECT * FROM enclosures;

INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 59, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Coco', 'Monkey', 24, 2 );
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Quilky','Bunny', 4, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Chip', 'Wolf', 12, 4);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Sam', 'Toucan' 13, 5);

SELECT * FROM animals;

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT,
);

INSERT INTO staff (name, employeeNumber) VALUES ('Paul', 12345);
INSERT INTO staff (name, employeeNumber) VALUES ('Alice', 67890);
INSERT INTO staff (name, employeeNumber) VALUES ('Anna', 54321);

CREATE TABLE assignments (
    id SERIAL PRIMARY KEY,
    employeeId INT REFERENCES employees(id),
    enclosureId INT REFERENCES enclosures(id), 
    day VARCHAR(255)
);

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 1, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 2, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 3, 'Wednesday');


