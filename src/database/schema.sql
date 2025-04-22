CREATE TABLE users (
    id_user SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE posts (
    id_post SERIAL PRIMARY KEY,
    id_user INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    image VARCHAR(200),
    CONSTRAINT fk_user FOREIGN KEY (id_user) REFERENCES users(id_user)
);

INSERT INTO users (name, email) VALUES 
    ('Maria Parma', 'maria.parma@email.com'),
    ('Julia Guarnieri', 'julia.guarnieri@email.com'),
    ('Luana Domeneghetti', 'luana.domeneghetti@email.com'),
    ('Anna Beatriz', 'anna.beatriz@email.com'),
    ('Beatriz lima', 'beatriz.lima@email.com');

INSERT INTO posts (title, image, id_user) VALUES 
    ('title 1', 'https://example.com/imagem1.jpeg', 1),
    ('title 2', 'https://example.com/imagem2.jpg', 2),
    ('title 3', 'https://example.com/imagem3.png', 3),
    ('title 4', 'https://example.com/imagem4.jpg', 4),
    ('title 5', 'https://example.com/imagem5.png', 5);
