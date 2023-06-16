/* Populate database with sample data. */

-- INSERT INTO animals (name) VALUES ('Luna');
-- INSERT INTO animals (name) VALUES ('Daisy');
-- INSERT INTO animals (name) VALUES ('Charlie');

INSERT INTO animal (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES
('Agumon', '2020-02-03', 10.23, true, 0),
('Gabumon', '2018-11-15', 8, true, 2),
('Pikachu', '2021-01-07', 15.04, false, 1),
('Devimon', '2017-05-12', 11, true, 5);
