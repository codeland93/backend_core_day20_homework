-- Create Artists Table
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(255) NOT NULL
);

-- Create Genre Table
CREATE TABLE Genre (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(255) NOT NULL
);

-- Create Albums Table
CREATE TABLE Albums (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    artist_id INT,
    genre_id INT,
    release_year INT,
    total_tracks INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

-- Alteration 
ALTER TABLE Albums
ADD duration INT;

-- Add foreign key constraints 
ALTER TABLE Albums
ADD CONSTRAINT fk_artist
FOREIGN KEY (artist_id)
REFERENCES Artists(artist_id);

ALTER TABLE Albums
ADD CONSTRAINT fk_genre
FOREIGN KEY (genre_id)
REFERENCES Genre(genre_id);
