DROP TABLE zoo_animal;
CREATE TABLE IF NOT EXISTS zoo_animal ( 
animal_id INTEGER PRIMARY KEY,
name TEXT NOT NULL, 
species TEXT NOT NULL,
age_years INTEGER NOT NULL,
weight_kg REAL NOT NULL
);
INSERT INTO zoo_animal (animal_id, name,species, age_years, weight_kg) 
VALUES 
(1, 'Leo', 'Lion', 8, 190.5),
(2, 'Sheru', 'Tiger', 6, 220),
(3, 'Dumbo', 'Elephant', 15, 5400),
(4, 'Longneck', 'Giraffe', 10, 800),
(5, 'Pingu', 'Penguin', 4, 30.2),
(6, 'Poo', 'Panda', 7, 110.6),
(7, 'Spot', 'Cheetah', 5, 72.4),
(8, 'Rocky', 'Rhino', 12, 2300),
(9, 'Leo', 'Lion', 8, 190.5),
(10, 'Sheru', 'Giraffe', 6, 220),
(11, 'Dumbo', 'Giraffe', 15, 5400),
(12, 'Longneck', 'Kangroo', 10, 800),
(13, 'Pingu', 'Tiger', 4, 30.2),
(14, 'Poo', 'Lion', 7, 110.6),
(15, 'Spot', 'Panda', 5, 72.4),
(16, 'Rocky', 'Panda', 12, 2300);

-- Display all rows
SELECT * FROM zoo_animal;


SELECT COUNT (DISTINCT species) AS unique_species FROM zoo_animal;

SELECT COUNT (animal_id) AS older_than_5 FROM zoo_animal where age_years > 10; 

SELECT SUM(weight_kg) AS total_weight_kg FROM zoo_animal;

SELECT AVG(age_years) AS avg_age_years FROM zoo_animal;

SELECT COUNT (DISTINCT species) AS unique_species, COUNT (animal_id) AS total_animal, SUM(weight_kg) AS total_weight_kg, AVG(age_years) AS avg_age_years FROM zoo_animal;