CREATE FUNCTION format_duration (p_seconds IN NUMBER) RETURN VARCHAR2 IS
    v_minutes NUMBER;
    v_remaining_seconds NUMBER;
BEGIN
        IF p_seconds IS NULL OR p_seconds < 0 THEN RETURN '00:00';
        END IF;
    v_minutes := FLOOR (p_seconds / 60);
    v_remaining_seconds := MOD (p_seconds, 60);
        RETURN LPAD (v_minutes, 2, '0') || ':' || LPAD (v_remaining_seconds, 2, '0');
END;

-- Funkcija za pretvaranje duljine pjesme iz sekundi u minute i sekunde za bolju vidljivost


CREATE FUNCTION album_avg_rating (p_album_id IN NUMBER) RETURN NUMBER IS v_avg_rating NUMBER (3,1);
    BEGIN
        SELECT ROUND(AVG(song_rating), 1)
        INTO v_avg_rating
        FROM songs
        WHERE album_id = p_album_id;
    RETURN v_avg_rating;
END;

-- Funkcija za računanje ratinga za album prema prosjeku svih pjesmi na albumu


CREATE OR REPLACE FUNCTION album_avg_rating (p_album_id IN NUMBER) RETURN NUMBER IS v_avg_rating NUMBER (3,2);
    BEGIN
        SELECT ROUND(AVG(song_rating), 2)
        INTO v_avg_rating
        FROM songs
        WHERE album_id = p_album_id;
    RETURN v_avg_rating;
END;

-- Promjena decimalnih vrijednosti za bolju preciznost