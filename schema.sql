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
