CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES 
    ('Maria Parma', 'maria.parma@email.com'),
    ('Bruno Correa', 'bruno.correa@email.com'),
    ('Luana Domeneghetti', 'luana.domeneghetti@email.com'),
    ('Anna Beatriz', 'anna.beatriz@email.com'),
    ('Beatriz lima', 'beatriz.lima@email.com');
