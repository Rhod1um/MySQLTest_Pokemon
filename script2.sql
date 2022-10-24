CREATE DATABASE kea collate utf8_danish_ci; -- hvis ORDER BY alfabetisk, er æ ø å med
-- når dette er specificeret?

USE kea;

CREATE TABLE student(
    id int AUTO_INCREMENT, /*NOT NULL UNIQUE - de her er der automatisk når man har valgt den som PK*/
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    gender binary, /*true or false*/
    PRIMARY KEY (id) /*definer primary key til sidst og i parentes*/
);
-- det her kan ikke ændres når der først er puttet data ind i

INSERT INTO student(name, email, gender) VALUES ('Claus', 'clbo@kea.dk', 0);/*id er ikke med her men der skal åbenbart skrives variabler først da den ellers ikke kan fordi den "forventer 4 variabler"*/
INSERT INTO student(name, email, gender) VALUES ('pia', 'pia@kea.dk', 1);
INSERT INTO student(name, email, gender) VALUES ('anne', 'anne@kea.dk', 1);

-- update
UPDATE student SET name='Paul', email='paul@kea.dk' WHERE id=1 AND name='Claus';

-- man vil nødigt delete ting i databaser, hvis en person stopper på kea slettes de ikke
-- bare, der tilføjes fx et felt med at de ikke går der og om flere år slettes de så

SELECT * FROM student;

DELETE FROM student WHERE id=1;

-- AND OR NOT, kan også bruge || og && . = og LIKE er ens her (ingen er case sensitive)

SELECT * FROM student WHERE gender=0 AND name='pia';
SELECT * FROM student WHERE NOT gender=1;

-- LIKE  bruges ved wildcards som % og _ og IN
SELECT * FROM student WHERE name LIKE '%a';

-- ORDER BY
SELECT * FROM student ORDER BY name; -- ASC by default, alfabetisk a-z rækkefølge

-- funktioner (og alias)
SELECT COUNT(*) as NumberOfStudnetsAtKea FROM student;
SELECT AVG(gender) as GenderAverage FROM student; -- procent køn
SELECT MAX(id) as HøjestID FROM student;

-- IN () operator, det i parenteserne er en liste
SELECT * FROM student WHERE name IN ('anna', 'pia');
SELECT * FROM student WHERE name IN (SELECT name FROM student WHERE name LIKE '%a');
-- de to giver same resultat. Subquery/subselect kan bruges i stedet for IN
-- selecte mere avanceret
-- subselect kan tage data fra anden tabel i samme database
