/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals
WHERE name LIKE '%mon';

SELECT name FROM animals
WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name FROM animals
WHERE neutered = true AND escape_attempts < 3;

SELECT date_of_birth FROM animals
WHERE name IN ('Agumon', 'Pikachu');

SELECT name, escape_attempts FROM animals
WHERE weight_kg > 10.5;

SELECT * FROM animals
WHERE neutered = true;

SELECT * FROM animals
WHERE name <> 'Gabumon';

SELECT * FROM animals
WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- ==================================================

BEGIN TRANSACTION;
UPDATE animals
SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;
COMMIT TRANSACTION;


BEGIN TRANSACTION;
UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';
UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;
SELECT * FROM animals;
COMMIT TRANSACTION;
SELECT * FROM animals;



BEGIN TRANSACTION;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;
COMMIT TRANSACTION;
SELECT * FROM animals;



BEGIN TRANSACTION;
DELETE FROM animals
WHERE date_of_birth > '2022-01-01';
SAVEPOINT savepoint;
UPDATE animals
SET weight_kg = weight_kg * -1;
ROLLBACK TO savepoint;
UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;
COMMIT TRANSACTION;


SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals
WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT neutered, SUM(escape_attempts) FROM animals
GROUP BY neutered;

SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals
GROUP BY species;

SELECT AVG(escape_attempts) FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;

-- ==================================================

SELECT * FROM animals
LEFT JOIN owners
ON animals.owner_id = owners.id
WHERE full_name = 'Melody Pond';

SELECT * FROM animals
LEFT JOIN species
ON animals.species_id = species.id
WHERE species.name = 'Pokemon';

SELECT * FROM owners
LEFT JOIN animals
ON owners.id = animals.owner_id;

SELECT species.name as species, COUNT(*) FROM animals
LEFT JOIN species
ON species.id = animals.species_id
GROUP BY species.name;

SELECT * FROM owners
LEFT JOIN animals
ON owners.id = animals.owner_id
LEFT JOIN species
ON animals.species_id = species.id
WHERE full_name = 'Jennifer Orwell' AND species.name = 'Digimon';

SELECT * FROM owners
LEFT JOIN animals
ON owners.id = animals.owner_id
WHERE full_name = 'Dean Winchester' AND escape_attempts = 0;

SELECT full_name, COUNT(*) FROM owners
LEFT JOIN animals
ON owners.id = animals.owner_id
GROUP BY full_name
ORDER BY COUNT(*) DESC
LIMIT 1;

-- ==================================================

SELECT * FROM animals
LEFT JOIN visits
ON animals.id = visits.animal_id
LEFT JOIN vets
ON visits.vet_id = vets.id
WHERE vets.name = 'William Tatcher'
ORDER BY visits.date_of_visit DESC
LIMIT 1;

SELECT COUNT(*) FROM animals
LEFT JOIN visits
ON animals.id = visits.animal_id
LEFT JOIN vets
ON visits.vet_id = vets.id
WHERE vets.name = 'Stephanie Mendez';

SELECT * FROM vets
LEFT JOIN specializations
ON vets.id = specializations.vet_id
LEFT JOIN species
ON specializations.species_id = species.id;

SELECT * FROM animals
LEFT JOIN visits
ON animals.id = visits.animal_id
LEFT JOIN vets
ON visits.vet_id = vets.id
WHERE vets.name = 'Stephanie Mendez'
AND visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';

SELECT animals.name, COUNT(*) FROM animals
LEFT JOIN visits
ON animals.id = visits.animal_id
LEFT JOIN vets
ON visits.vet_id = vets.id
GROUP BY animals.name
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT animals.name FROM animals
LEFT JOIN visits
ON animals.id = visits.animal_id
LEFT JOIN vets
ON visits.vet_id = vets.id
WHERE vets.name = 'Maisy Smith'
ORDER BY visits.date_of_visit ASC
LIMIT 1;

SELECT animals.name, vets.name, visits.date_of_visit FROM animals
LEFT JOIN visits
ON animals.id = visits.animal_id
LEFT JOIN vets
ON visits.vet_id = vets.id
ORDER BY visits.date_of_visit DESC
LIMIT 1;

SELECT COUNT(*) FROM visits
LEFT JOIN specializations
ON visits.vet_id = specializations.vet_id
LEFT JOIN animals
ON visits.animal_id = animals.id
WHERE specializations.species_id <> animals.species_id;

SELECT species.name AS species, COUNT(*) FROM animals
LEFT JOIN visits
ON animals.id = visits.animal_id
LEFT JOIN species
ON animals.species_id = species.id
LEFT JOIN vets
ON visits.vet_id = vets.id
WHERE vets.name = 'Maisy Smith'
GROUP BY species.name
ORDER BY COUNT(*) DESC
LIMIT 1;
