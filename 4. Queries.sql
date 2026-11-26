SELECT * FROM albums;


SELECT a.album_id, a.album_title, a.artist_name, a.release_date, ROUND (AVG(s.song_rating), 2) AS album_rating
    FROM albums a
        LEFT JOIN songs s ON a.album_id = s.ALBUM_ID
            GROUP BY a.album_id, a.album_title, a.artist_name, a.release_date
                ORDER BY album_rating DESC;

-- Popis albuma sortirano prema ratingu od prosjeka svih pjesmi iz albuma od najboljeg prema dolje


SELECT
    song_name, song_duration AS runtime_seconds,
    format_duration (song_duration) AS runtime_real,
    song_rating
        FROM songs
            ORDER BY runtime_real DESC;

-- Popis svih pjesmi sortiran prema duljini u minutama i sekundama od najdulje do najkraće


SELECT album_id, album_title, artist_name, release_date, genre, album_avg_rating (album_id) AS final_rating
    FROM albums
        ORDER BY artist_name DESC;

-- Prikaz svih albuma svrstano po artistima + prosječan rating tih albuma prema prosjeku svih pjesmi na albumu


SELECT a.album_id, s.song_name, FORMAT_DURATION (s.song_duration) AS formatted_duration, a.album_title, a.artist_name, s.song_rating
    FROM songs s
        LEFT JOIN albums a ON a.album_id = s.album_id
            WHERE song_rating > 8.9
                ORDER BY song_rating DESC;

-- Prikaz svih pjesmi s ratingom od 9 ili više od najbolje prema dolje


SELECT a.artist_name, COUNT(s.song_id) AS number_of_songs
    FROM albums a
        LEFT JOIN songs s ON s.album_id = a.album_id
            GROUP BY a.artist_name
                ORDER BY number_of_songs DESC;

-- Zbroj svih pjesmi po artistu


SELECT
    ar.artist_name,
    ROUND(AVG(album_avg_rating(al.album_id)), 2) AS avg_artist_rating,
    COUNT(DISTINCT al.album_id) AS total_albums_rated,
    ar.personal_rank
        FROM
            artists ar
        JOIN
            albums al ON ar.artist_name = al.artist_name
        GROUP BY
            ar.artist_id,
            ar.artist_name,
            ar.personal_rank
        ORDER BY
            avg_artist_rating DESC;

-- Čisti prosječni rating svih artista prema prosjeku svih njihovih albuma


SELECT
    ar.artist_name,
    ROUND(AVG(album_avg_rating(al.album_id)), 2) AS avg_artist_rating,
    COUNT(DISTINCT al.album_id) AS total_albums_rated,
    COUNT(s.song_id) AS total_songs,
    ar.personal_rank
        FROM
            artists ar
        JOIN
            albums al ON ar.artist_name = al.artist_name
        JOIN
            songs s ON al.album_id = s.album_id
        GROUP BY
            ar.artist_id,
            ar.artist_name,
            ar.personal_rank
        ORDER BY
            avg_artist_rating DESC;

-- Ne dela dobro jer dok joina songs na albums table, broji opet svaku instancu albuma kod pjesmi i mijenja rating ako neki album ima više pjesmi od drugog


WITH artist_stats AS (
    SELECT
        ar.artist_name,
        ar.personal_rank,
        album_avg_rating(al.album_id) AS single_album_rating,
        al.album_id
    FROM
        artists ar
    JOIN
        albums al ON ar.artist_name = al.artist_name
),
song_count AS (
    SELECT
        al.artist_name,
        COUNT(s.song_id) AS total_songs
    FROM
        albums al
    JOIN
        songs s ON al.album_id = s.album_id
    GROUP BY
        al.artist_name
)
SELECT
    ast.artist_name,
    ROUND(AVG(ast.single_album_rating), 2) AS avg_artist_rating,
    COUNT(DISTINCT ast.album_id) AS total_albums_rated,
    sc.total_songs,
    ast.personal_rank
FROM
    artist_stats ast
JOIN
    song_count sc ON ast.artist_name = sc.artist_name
GROUP BY
    ast.artist_name,
    ast.personal_rank,
    sc.total_songs
ORDER BY
    avg_artist_rating DESC;

-- Čisti prosječni rating svih artista prema prosjeku svih njihovih albuma + broj svih njihovih pjesmi koje slušam


WITH artist_stats AS (
    SELECT
        ar.artist_name,
        ar.personal_rank,
        album_avg_rating(al.album_id) AS single_album_rating,
        al.album_id
    FROM
        artists ar
    JOIN
        albums al ON ar.artist_name = al.artist_name
),
song_count AS (
    SELECT
        al.artist_name,
        COUNT(s.song_id) AS total_songs
    FROM
        albums al
    JOIN
        songs s ON al.album_id = s.album_id
    GROUP BY
        al.artist_name
),
base_summary AS (
    SELECT
        ast.artist_name,
        ROUND(AVG(ast.single_album_rating), 2) AS avg_artist_rating,
        COUNT(DISTINCT ast.album_id) AS total_albums_rated,
        sc.total_songs,
        ast.personal_rank
    FROM
        artist_stats ast
    JOIN
        song_count sc ON ast.artist_name = sc.artist_name
    GROUP BY
        ast.artist_name,
        ast.personal_rank,
        sc.total_songs
)
SELECT
    artist_name,
    avg_artist_rating,
    total_albums_rated,
    total_songs,
    ROUND(avg_artist_rating + (total_songs * 0.005), 3) AS boosted_artist_rating,
    personal_rank
FROM
    base_summary
ORDER BY
    boosted_artist_rating DESC;

-- Prosječni rating svih artista + 0.005 dodatak na rating za svaku pjesmu kao bonus za konzistentnost