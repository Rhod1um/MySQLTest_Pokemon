-- DDL - her er data definition language
-- table schema

CREATE DATABASE school;

USE school;

CREATE TABLE students (
    id int NOT NULL,
    name varchar(20) UNIQUE ,
    age int,
    PRIMARY KEY (id)
);

DROP TABLE students; -- sletter tabel
DROP DATABASE school; -- sletter database
TRUNCATE TABLE students;

-- DML - data manipulation language
-- tabellen er students, databsen er school

INSERT INTO students(id, name, age)
VALUES (1, 'Clara', '12');
INSERT INTO students VALUES(10, 'erika',23);
INSERT INTO students VALUES (23, 'anna', 67);

SELECT * FROM students;
SELECT name FROM students WHERE id=1;

CREATE DATABASE movieDatabase;
USE movieDatabase;
DROP TABLE movies;
CREATE TABLE movies (
    Year int,
    Length int,
    Title varchar(40),
    Subject varchar(20),
    Popularity int,
    Awards boolean
);

INSERT INTO movies VALUES (1962, 138, '8 1/2', 'Drama', 80, 1);
INSERT INTO movies VALUES (1968, 139, '2001: A Space Odyssey', 'Science Fiction', 83, 0);
INSERT INTO movies VALUES (1982, 92, '48 Hrs.', 'Action', 67, 0);
INSERT INTO movies VALUES (1966, 95, 'A Big Hand for the Little Lady', 'Comedy', 12, 0);
INSERT INTO movies VALUES (1992, 60, 'A Certain Sacrifice', 'Music', 24, 0);
INSERT INTO movies VALUES (1962, 105, 'A Child Is Waiting', 'Drama', 60, 0);
INSERT INTO movies VALUES (1985, 118, 'A Chorus Line, The Movie', 'Music', 71, 0);
INSERT INTO movies VALUES (1990, 89, 'A Chorus of Disapproval', 'Comedy', 0, 0);
INSERT INTO movies VALUES (1971, 138, 'A Clockwork Orange', 'Science Fiction', 83, 1);
INSERT INTO movies VALUES (1967, 100, 'A Coeur Joie, (Head Over Heels)', 'Action', 54, 0);

SELECT * FROM movies;
SELECT Title FROM movies;
SELECT Title FROM movies WHERE Year > 1962;
SELECT Title FROM movies WHERE Length > 100;
SELECT * FROM movies WHERE Subject LIKE 'science fiction';
SELECT * FROM movies WHERE Subject LIKE 'drama' AND Awards = 1;
SELECT MAX(Popularity) FROM movies;
SELECT * FROM movies ORDER BY Popularity DESC LIMIT 1;
SELECT avg(Popularity) FROM movies;

DROP TABLE marsroverdata;

CREATE DATABASE NASADatabase;
USE NASADatabase;
CREATE TABLE MarsRoverData(
    id int,
    sol int,
    camera varchar(10),
    img_src text,
    earth_date date,
    rover varchar(20)
);

INSERT INTO marsroverdata VALUES (102693, 1000, 'FHAS', 'http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/01000/opgs/edr/fcam/FLB_486265257EDR_F0481570FHAZ00323M_.JPG', '2015-05-30','Curiosity');
INSERT INTO marsroverdata VALUES (102694, 1000, 'FHAS', 'http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/01000/opgs/edr/fcam/FRB_486265257EDR_F0481570FHAZ00323M_.JPG', '2015-05-30', 'Curiosity');
INSERT INTO marsroverdata VALUES (102850, 1000, 'RHAZ', 'http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/01000/opgs/edr/rcam/RLB_486265291EDR_F0481570RHAZ00323M_.JPG', '2015-05-30', 'Curiosity');
INSERT INTO marsroverdata VALUES (102851, 1000, 'RHAZ', 'http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/01000/opgs/edr/rcam/RRB_486265291EDR_F0481570RHAZ00323M_.JPG', '2015-05-30', 'Curiosity');

SELECT * FROM MarsRoverData;
SELECT img_src FROM marsroverdata WHERE camera LIKE 'FHAS';
SELECT * FROM marsroverdata WHERE id = 102694;


