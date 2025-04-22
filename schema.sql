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

INSERT INTO users (name, email) VALUES
('Beyoncé', 'beyonce.fan@email.com'),
('Taylor Swift', 'taylor.superstar@email.com'),
('Drake', 'drake.music@email.com'),
('Rihanna', 'rihanna.diamonds@email.com'),
('The Weeknd', 'theweeknd.starboy@email.com'),
('Ariana Grande', 'ariana.voice@email.com'),
('Ed Sheeran', 'ed.shapeofyou@email.com'),
('Billie Eilish', 'billie.badguy@email.com'),
('Justin Bieber', 'justin.peaches@email.com'),
('Dua Lipa', 'dua.future@email.com'),
('Katy Perry', 'katy.roar@email.com'),
('Lady Gaga', 'lady.pokerface@email.com'),
('Bruno Mars', 'bruno.luxury@email.com'),
('Shawn Mendes', 'shawn.harmony@email.com'),
('Coldplay', 'coldplay.viva@email.com'),
('Imagine Dragons', 'imagine.thunder@email.com'),
('Adele', 'adele.hello@email.com'),
('Sam Smith', 'sam.stay@email.com'),
('Maroon 5', 'maroon.sugar@email.com'),
('Harry Styles', 'harry.watermelon@email.com'),
('Post Malone', 'post.sunflower@email.com'),
('Selena Gomez', 'selena.magic@email.com'),
('Doja Cat', 'doja.sayso@email.com'),
('Olivia Rodrigo', 'olivia.drivers@email.com'),
('Bad Bunny', 'badbunny.energia@email.com'),
('BTS', 'bts.dynamite@email.com'),
('Blackpink', 'blackpink.kpop@email.com'),
('Shakira', 'shakira.hips@email.com'),
('Jennifer Lopez', 'jlo.latina@email.com'),
('Anitta', 'anitta.bang@email.com'),
('Camila Cabello', 'camila.havana@email.com'),
('Charlie Puth', 'charlie.attention@email.com'),
('SZA', 'sza.control@email.com'),
('Lizzo', 'lizzo.truth@email.com'),
('Lil Nas X', 'lilnas.industry@email.com'),
('Megan Thee Stallion', 'megan.savage@email.com'),
('Travis Scott', 'travis.sicko@email.com'),
('J Balvin', 'jbalvin.vibras@email.com'),
('Karol G', 'karolg.tusa@email.com'),
('Rosalia', 'rosalia.motomami@email.com'),
('Khalid', 'khalid.location@email.com'),
('Normani', 'normani.wildside@email.com'),
('Ava Max', 'avamax.kings@email.com'),
('Troye Sivan', 'troye.youth@email.com'),
('Halsey', 'halsey.colors@email.com'),
('Christina Aguilera', 'xtina.genie@email.com'),
('Madonna', 'madonna.vogue@email.com'),
('Elton John', 'elton.rocket@email.com'),
('Stevie Wonder', 'stevie.superstition@email.com'),
('Celine Dion', 'celine.myheart@email.com');