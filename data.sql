/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES
('Agumon', '2020-02-03', 10.23, true, 0),
('Gabumon', '2018-11-15', 8, true, 2),
('Pikachu', '2021-01-07', 15.04, false, 1),
('Devimon', '2017-05-12', 11, true, 5);

-- ==================================================

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES
('Charmander', '2020-02-08', -11, false, 0),
('Plantmon', '2021-11-15', -5.7, true, 2),
('Squirtle', '1993-04-02', -12.13, false, 3),
('Angemon', '2005-06-12', -45, true, 1),
('Boarmon', '2005-06-07', 20.4, true, 7),
('Blossom', '1998-10-13', 17, true, 3),
('Ditto', '2022-05-14', 22, true, 4);

-- ==================================================

INSERT INTO owners (full_name, age)
VALUES
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO species (name)
VALUES
('Pokemon'),
('Digimon');

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 1
WHERE species_id IS NULL;

UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = 2
WHERE name IN ('Gabumon', 'Pikachu');

UPDATE animals
SET owner_id = 3
WHERE name IN ('Devimon', 'Plantmon');

UPDATE animals
SET owner_id = 4
WHERE name IN ('Charmander', 'Squirtle', 'Blossom');

UPDATE animals
SET owner_id = 5
WHERE name IN ('Angemon', 'Boarmon');

-- ==================================================

/*
taking into account the following table structure:
CREATE TABLE vets(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    age INTEGER,
    date_of_graduation DATE
);

CREATE TABLE specializations(
    id SERIAL PRIMARY KEY NOT NULL,
    vet_id INTEGER REFERENCES vets(id),
    species_id INTEGER REFERENCES species(id)
);

CREATE TABLE visits(
    id SERIAL PRIMARY KEY NOT NULL,
    vet_id INTEGER REFERENCES vets(id),
    animal_id INTEGER REFERENCES animals(id),
    date_of_visit DATE
);

Insert the following data for vets:

    Vet William Tatcher is 45 years old and graduated Apr 23rd, 2000.
    Vet Maisy Smith is 26 years old and graduated Jan 17th, 2019.
    Vet Stephanie Mendez is 64 years old and graduated May 4th, 1981.
    Vet Jack Harkness is 38 years old and graduated Jun 8th, 2008.

Insert the following data for specialties:
    Vet William Tatcher is specialized in Pokemon.
    Vet Stephanie Mendez is specialized in Digimon and Pokemon.
    Vet Jack Harkness is specialized in Digimon.

Insert the following data for visits:

    Agumon visited William Tatcher on May 24th, 2020.
    Agumon visited Stephanie Mendez on Jul 22th, 2020.
    Gabumon visited Jack Harkness on Feb 2nd, 2021.
    Pikachu visited Maisy Smith on Jan 5th, 2020.
    Pikachu visited Maisy Smith on Mar 8th, 2020.
    Pikachu visited Maisy Smith on May 14th, 2020.
    Devimon visited Stephanie Mendez on May 4th, 2021.
    Charmander visited Jack Harkness on Feb 24th, 2021.
    Plantmon visited Maisy Smith on Dec 21st, 2019.
    Plantmon visited William Tatcher on Aug 10th, 2020.
    Plantmon visited Maisy Smith on Apr 7th, 2021.
    Squirtle visited Stephanie Mendez on Sep 29th, 2019.
    Angemon visited Jack Harkness on Oct 3rd, 2020.
    Angemon visited Jack Harkness on Nov 4th, 2020.
    Boarmon visited Maisy Smith on Jan 24th, 2019.
    Boarmon visited Maisy Smith on May 15th, 2019.
    Boarmon visited Maisy Smith on Feb 27th, 2020.
    Boarmon visited Maisy Smith on Aug 3rd, 2020.
    Blossom visited Stephanie Mendez on May 24th, 2020.
    Blossom visited William Tatcher on Jan 11th, 2021.

*/

INSERT INTO vets (name, age, date_of_graduation)
VALUES
('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (vet_id, species_id)
VALUES
(1, 1),
(3, 1),
(3, 2),
(4, 2);

INSERT INTO visits (vet_id, animal_id, date_of_visit)
VALUES
(1, 1, '2020-05-24'),
(3, 1, '2020-07-22'),
(4, 2, '2021-02-02'),
(2, 3, '2020-01-05'),
(2, 3, '2020-03-08'),
(2, 3, '2020-05-14'),
(3, 4, '2021-05-04'),
(4, 5, '2021-02-24'),
(2, 6, '2019-12-21'),
(1, 6, '2020-08-10'),
(2, 6, '2021-04-07'),
(3, 7, '2019-09-29'),
(4, 8, '2020-10-03'),
(4, 8, '2020-11-04'),
(2, 9, '2019-01-24'),
(2, 9, '2019-05-15'),
(2, 9, '2020-02-27'),
(2, 9, '2020-08-03'),
(3, 10, '2020-05-24'),
(1, 10, '2021-01-11');
