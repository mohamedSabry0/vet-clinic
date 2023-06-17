/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(10, 5)
);

-- ==================================================

ALTER TABLE animals
ADD COLUMN species varchar(50);

-- ==================================================

CREATE TABLE owners(
    id SERIAL PRIMARY KEY NOT NULL,
    full_name VARCHAR(50),
    age INTEGER
);

CREATE TABLE species(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50)
);

ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE animals
ADD COLUMN species_id INTEGER REFERENCES species(id);

ALTER TABLE animals
ADD COLUMN owner_id INTEGER REFERENCES owners(id);

-- ==================================================

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
