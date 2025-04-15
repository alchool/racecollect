
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE pilots (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    sport VARCHAR(50)
);

INSERT INTO pilots (name, sport) VALUES
('Marc Marquez', 'MotoGP'),
('Francesco Bagnaia', 'MotoGP'),
('Lewis Hamilton', 'Formula1'),
('Max Verstappen', 'Formula1');
