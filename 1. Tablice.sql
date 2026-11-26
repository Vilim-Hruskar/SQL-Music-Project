CREATE TABLE albums(
    album_id NUMBER GENERATED ALWAYS AS IDENTITY,
    album_title VARCHAR2(100) NOT NULL,
    artist_name VARCHAR2(100) NOT NULL,
    release_date DATE,
    genre VARCHAR2(50),
    album_rating NUMBER,
    CONSTRAINT pk_albums PRIMARY KEY (album_id)
)

CREATE TABLE songs (
    song_id       NUMBER generated always AS identity,
    album_id      NUMBER,
    song_name     VARCHAR2(100) NOT NULL,
    song_duration NUMBER NOT NULL,
    track_number  NUMBER NOT NULL,
    song_rating   NUMBER(3, 1),
    CONSTRAINT    fk_songs_albums FOREIGN KEY (album_id)
    REFERENCES albums(album_id) ON DELETE SET NULL,
    CONSTRAINT chk_song_rating CHECK (song_rating IS NULL OR song_rating >= 1 AND song_rating <= 10)
)

ALTER TABLE albums MODIFY album_rating NUMBER(3,1)

TRUNCATE TABLE albums;

ALTER TABLE albums MODIFY album_id GENERATED ALWAYS AS IDENTITY (NOCACHE START WITH 1 RESTART);

ALTER TABLE songs MODIFY song_id GENERATED ALWAYS AS IDENTITY (NOCACHE START WITH 1 RESTART);

-- Htio sam resetirat brojeve jer svaki put kad sam krivo unio album ili pjesmu bi zapamtilo taj broj i nastavilo dalje


CREATE TABLE artists (
    artist_id   NUMBER generated always AS identity,
    artist_name VARCHAR2 (100) NOT NULL,
    artist_country VARCHAR2 (50) NOT NULL,
    personal_rank NUMBER NOT NULL);