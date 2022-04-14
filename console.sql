CREATE DATABASE sql_database;

CREATE TABLE auto(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    made_in_year INTEGER NOT NULL,
    driver_id INT REFERENCES driver(id)
);

INSERT INTO auto(id, name, made_in_year, driver_id)
VALUES (1,'Mercedes',1990,1),
       (2,'Toyota',2000,2),
       (3,'Audi',1950,3);

CREATE TABLE driver(
    id INTEGER PRIMARY KEY,
    driver_name VARCHAR(20) NOT NULL,
    age INTEGER NOT NULL
);

INSERT INTO driver(id, driver_name, age)
VALUES (1,'Nurzhan',25),
       (2,'Kunzaada',25),
       (3,'Aleksandr',50);

CREATE TABLE house(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    age INTEGER NOT NULL,
    windows INTEGER NOT NULL,
    family_id INTEGER REFERENCES family(id)
);

INSERT INTO house(id, name, age, windows, family_id)
VALUES (1,'Wonderful',100,20,1),
       (2,'Small house',2,5,2),
       (3,'White house',200,500,null),
       (4,'Prety house',20,18,3);

CREATE TABLE family(
    id INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    people INTEGER NOT NULL
);

INSERT INTO family(id, name, people)
VALUES (1,'Family 1',5),
       (2,'Family 2',7),
       (3,'Family 3',10);


CREATE TABLE papa(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    family_id INTEGER REFERENCES family(id),
    house_id INTEGER REFERENCES house(id),
    wife_id INTEGER REFERENCES mama(id)
);

INSERT INTO papa(id, name, family_id, house_id, wife_id)
VALUES (1,'Papa 1',1,1,1),
       (2,'Papa 2',2,2,2),
       (3,'Papa 3',3,3,null);

CREATE TABLE mama(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    family_id INTEGER REFERENCES family(id),
    house_id INTEGER REFERENCES house(id)
);

INSERT INTO mama(id, name, family_id, house_id)
VALUES (1,'Mama 1',1,1),
       (2,'Mama',2,2);

CREATE TABLE daughter(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    papa_id INTEGER REFERENCES papa(id),
    mama_id INTEGER REFERENCES mama(id),
    family_id INTEGER REFERENCES family(id)
);

INSERT INTO daughter(id, name, papa_id, mama_id, family_id)
VALUES (1,'Carlotta',1,1,1);

CREATE TABLE son(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    papa_id INTEGER REFERENCES papa(id),
    mama_id INTEGER REFERENCES mama(id),
    family_id INTEGER REFERENCES family(id)
);

INSERT INTO son(id, name, papa_id, mama_id, family_id)
VALUES (1,'Son 1',1,1,1);

CREATE TABLE country(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    continent VARCHAR(20) NOT NULL,
    people INTEGER NOT NULL,
    city_id INTEGER REFERENCES city(id)
);

INSERT INTO country(id, name, continent, people, city_id)
VALUES (1,'Kyrgyztan','Central Asia',6719132,1),
       (2,'USA','North America',650000000,2);

CREATE TABLE city(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    people INTEGER NOT NULL
);

INSERT INTO city(id, name, people)
VALUES (1,'Bishkek',1000000),
       (2,'New-York',8500000);

CREATE TABLE room(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    who_live INTEGER REFERENCES daughter(id)
);

INSERT INTO room(id, name, who_live)
VALUES (1,'Room 1',1),
       (2,'Room 2',null);

CREATE TABLE planet(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    number_of_planet INTEGER NOT NULL
);

INSERT INTO planet(id, name, number_of_planet)
VALUES (1,'Mercury',1),
       (2,'Venus',2),
       (3,'Earth',3),
       (4,'Mars',4),
       (5,'Jupiter',5),
       (6,'Saturn',6),
       (7,'Uranus',7),
       (8,'Neptune',8);

CREATE TABLE mercury(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    planet_id INTEGER REFERENCES planet(id)
);

INSERT INTO mercury(id, name, planet_id)
VALUES (1,'Mercury',1);

CREATE TABLE venus(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    planet_id INTEGER REFERENCES planet(id)
);

INSERT INTO venus(id, name, planet_id)
VALUES (1,'Venus',2);

CREATE TABLE earth(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    planet_id INTEGER REFERENCES planet(id)
);

INSERT INTO Earth(id, name, planet_id)
VALUES (1,'Earth',3);


CREATE TABLE mars(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    planet_id INTEGER REFERENCES planet(id)
);

INSERT INTO mars(id, name, planet_id)
VALUES (1,'Mars',4);

CREATE TABLE jupiter(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    planet_id INTEGER REFERENCES planet(id)
);

INSERT INTO jupiter(id, name, planet_id)
VALUES (1,'Jupiter',5);

CREATE TABLE saturn(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    planet_id INTEGER REFERENCES planet(id)
);

INSERT INTO saturn(id, name, planet_id)
VALUES (1,'saturn',6);

CREATE TABLE uranus(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    planet_id INTEGER REFERENCES planet(id)
);

INSERT INTO uranus(id, name, planet_id)
VALUES (1,'Uranus',7);

CREATE TABLE neptune(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    planet_id INTEGER REFERENCES planet(id)
);

INSERT INTO neptune(id, name, planet_id)
VALUES (1,'Neptune',8);

