-- CREATE TABLE Stars (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     temp_in_K INT NOT NULL
-- );

-- CREATE TABLE Planets (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     orbital_period_in_years FLOAT NOT NULL,
--     star_id INT NOT NULL REFERENCES Stars
-- );

-- CREATE TABLE Moons (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL
-- );

CREATE TABLE Moon_Planets(
    planet_id INT REFERENCES Planets,
    moon_id INT REFERENCES Moons
);