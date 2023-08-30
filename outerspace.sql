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
    TODO: REFERENCE Planets
)

-- CREATE TABLE Moon_Planets(
--     planet_id REFERENCES Planets,
--     moon_id REFERENCES Moons
-- )

INSERT INTO Stars
(name, temp_in_K)
VALUES ('The Sun', 5800),
('Proxima Centauri', 3042),
('Gliese 876', 3192);

INSERT INTO Planets
(name, orbital_period_in_years, star_id)
VALUES ('Earth', 1.00, 1),
('Mars', 1.882, 1),
('Venus', 0.62, 1),
('Proxima Centauri b', 0.03, 2),
('Gliese 876 b', 0.236, 3);

INSERT INTO Planets