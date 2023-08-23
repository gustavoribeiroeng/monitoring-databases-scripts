CREATE DATABASE Artists_Albums;

USE Artists_Albums;

CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(100)
);

INSERT INTO Artists (artist_id, artist_name) VALUES
    (1, 'Taylor Swift'),
    (2, 'Ed Sheeran'),
    (3, 'Adele'),
    (4, 'Drake'),
    (5, 'Rihanna'),
    (6, 'Coldplay'),
    (7, 'Beyoncé'),
    (8, 'Eminem'),
    (9, 'Katy Perry'),
    (10, 'Bruno Mars'),
    (11, 'Ariana Grande'),
    (12, 'The Weeknd'),
    (13, 'Justin Bieber'),
    (14, 'Lady Gaga'),
    (15, 'Sam Smith');


CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    album_title VARCHAR(200),
    release_year INT,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

INSERT INTO Albums (album_id, album_title, release_year, artist_id) VALUES
    (1, '1989', 2014, 1),
    (2, 'Divide', 2017, 2),
    (3, '25', 2015, 3),
    (4, 'Views', 2016, 4),
    (5, 'Anti', 2016, 5),
    (6, 'A Head Full of Dreams', 2015, 6),
    (7, 'Lemonade', 2016, 7),
    (8, 'Recovery', 2010, 8),
    (9, 'Teenage Dream', 2010, 9),
    (10, 'Unorthodox Jukebox', 2012, 10),
    (11, 'Dangerous Woman', 2016, 11),
    (12, 'Starboy', 2016, 12),
    (13, 'Purpose', 2015, 13),
    (14, 'Joanne', 2016, 14),
    (15, 'In the Lonely Hour', 2014, 15);


CREATE TABLE Songs (
    song_id INT PRIMARY KEY,
    song_title VARCHAR(150),
    duration TIME,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

INSERT INTO Songs (song_id, song_title, duration, album_id) VALUES
    (1, 'Shake It Off', '00:03:39', 1),
    (2, 'Shape of You', '00:03:54', 2),
    (3, 'Hello', '00:04:55', 3),
    (4, 'One Dance', '00:02:54', 4),
    (5, 'Work', '00:03:39', 5),
    (6, 'Adventure of a Lifetime', '00:04:23', 6),
    (7, 'Formation', '00:03:26', 7),
    (8, 'Not Afraid', '00:04:10', 8),
    (9, 'Firework', '00:03:48', 9),
    (10, 'Locked Out of Heaven', '00:03:53', 10),
    (11, 'Into You', '00:04:04', 11),
    (12, 'Starboy', '00:03:50', 12),
    (13, 'Sorry', '00:03:20', 13),
    (14, 'Million Reasons', '00:03:25', 14),
    (15, 'Stay with Me', '00:02:52', 15);
