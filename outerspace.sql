table 1: planets
id SERIAL PRIMARY KEY
name varchar(50) NOT NULL
orbital-time float NOT NULL
sun-id REFERENCES sun.id


table 2: Stars
id SERIAL PRIMARY KEY
name varchar(50) NOT NULL
temp-in-K INT NOT NULL


table 3: moons
id SERIAL PRIMARY KEY
name varchar(50) NOT NULL


Joining-T: moons_planets
planet-id REFERENCES planet.id
moon-id REFERENCES moon.id

CREATE TABLE Stars (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    temp_in_K INT NOT NULL
)

CREATE TABLE Planets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    orbital_period_in_years FLOAT NOT NULL,
    star_id INT NOT NULL REFERENCES Stars
)

CREATE TABLE Moons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
)