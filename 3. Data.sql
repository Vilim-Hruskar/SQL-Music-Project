INSERT INTO ALBUMS (ALBUM_TITLE, ARTIST_NAME, RELEASE_DATE, GENRE)
         ('Interdimensional Act I a Ghost in Cepheus',
                'Seven',
                TO_DATE ('30.10.2020', 'DD.MM.YYYY'),
                'Djent');               
INSERT INTO ALBUMS (ALBUM_TITLE, ARTIST_NAME, RELEASE_DATE, GENRE)
         ('Interdimensional Act II Set Fire to Saturn',
                'Seven',
                TO_DATE ('30.10.2020', 'DD.MM.YYYY'),
                'Djent');
INSERT INTO ALBUMS (ALBUM_TITLE, ARTIST_NAME, RELEASE_DATE, GENRE)
         ('Interdimensional Act III Shadows in the Sky',
                'Seven',
                TO_DATE ('04.04.2025', 'DD.MM.YYYY'),
                'Djent');

-- Prvi insert statementi, ali kasnije sam naučio kako upisati više stavki odjednom


INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
     VALUES
        (1, 'The Isolationist', 493, 1, 8.9),
        (1, 'Coma', 417, 2, 9.2),
        (1, 'Redshift', 440, 3, 8.8),
        (1, 'Placebo', 370, 4, 9.4),
        (1, 'Vision / Down', 374, 5, 9),
        (1, 'Paralysis', 410, 6, 8.7),
        (1, 'Ghost', 393, 7, 8.8);

INSERT INTO albums (album_title, artist_name, release_date, genre)
    VALUES
        ('Esoteric Symbolism', 'Teramaze', TO_DATE('15.04.2014', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('Siege', 'Mechina', TO_DATE('01.01.2021', 'DD.MM.YYYY'), 'Industrial Metal'),
        ('Heavy is the Crown', 'Hungry Lights', TO_DATE('15.11.2016', 'DD.MM.YYYY'), 'Experimental Metal');


INSERT INTO albums (album_title, artist_name, release_date, genre)
    VALUES
        ('Cymatics', 'Seven', TO_DATE ('31.10.2009', 'DD.MM.YYYY'), 'Djent');


INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
    VALUES
        (10, 'Architect', 329, 1, 8.2),
        (10, 'The Burning', 419, 2, 9.5),
        (10, 'Deadlights', 418, 3, 9),
        (10, 'Digital Summer', 288, 4, 8.7),
        (10, 'Holographic Human Element', 514, 5, 10),
        (10, 'Fear of the Apocalypse', 390, 6, 9),
        (10, 'Star Assassin', 292, 7, 8.6),
        (10, 'Down the Ruin', 358, 8, 9.1),
        (10, 'Floodline', 368, 9, 8.9),
        (10, 'Veil', 331, 10, 9.2),
        (10, 'Sleep', 258, 11, 8.8),
        (10, 'Engines of Distraction', 600, 12, 8.9);


INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
    VALUES
        (8, 'The Worst in Us', 504, 2, 8.8),
        (8, 'Shock Doctrine', 273, 3, 8.9),
        (8, 'Purity Storm', 587, 4, 9.9),
        (8, 'Siege', 400, 5, 9.2),
        (8, 'Claw at the Dirt', 563, 6, 9),
        (8, 'Blood Feud Erotica', 484, 7, 9.1),
        (8, 'Freedom Foregone', 699, 8, 9.2);


INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
    VALUES
        (9, 'Contempt', 417, 2, 9.8),
        (9, 'Wickerman', 378, 3, 8.9),
        (9, 'The Thorn That Split My Wheel', 472, 4, 8.5),
        (9, 'My Finest Hour', 348, 5, 8.7),
        (9, 'Pinata', 592, 6, 8.9),
        (9, 'Demetrius', 360, 7, 9.1),
        (9, 'Heavy Is The Crown', 415, 8, 9.2),
        (9, 'Constancy', 425, 9, 9.7),
        (9, 'The Worst Of Evils', 304, 10, 9),
        (9, 'A Fathers End', 709, 11, 9.2);

INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
    VALUES
        -- Album 7: Esoteric Symbolism
        (7, 'All Seeing Eye', 122, 1, 8.7),
        (7, 'Line of Symmetry', 416, 2, 9.4),
        (7, 'Transhumanist', 255, 3, 8.9),
        (7, 'Bodies of Betrayal', 393, 4, 8.8),
        (7, 'Parallels / Dual Reality', 289, 5, 8.5),
        (7, 'Spawn', 310, 6, 9.2),
        (7, 'Punishment by Design', 327, 7, 8.1),
        (7, 'Dust of Martyrs', 318, 8, 9.9),
        (7, 'The Divulgence Act', 367, 9, 8.3),
        (7, 'Esoteric Symbolism', 434, 10, 9.1),
        (7, 'Order out of Chaos VI', 442, 11, 8.2),
        (7, 'Darkest Days of Symphony VII', 454, 12, 9),
        (7, 'In Vitro VIII', 481, 13, 9.2);

INSERT INTO albums (album_title, artist_name, release_date, genre)
    VALUES
        ('End of the Circle', 'Seven', TO_DATE ('07.01.2014', 'DD.MM.YYYY'), 'Djent'),
        ('Dark Scientific', 'Seven', TO_DATE ('17.04.2017', 'DD.MM.YYYY'), 'Djent'),
        ('Anhedonia', 'Teramaze', TO_DATE ('24.04.2012', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('Esoteric Symbolism', 'Teramaze', TO_DATE ('15.04.2014', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('Her Halo', 'Teramaze', TO_DATE ('30.10.2015', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('Are We Soldiers', 'Teramaze', TO_DATE ('21.06.2019', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('I Wonder', 'Teramaze', TO_DATE ('09.10.2020', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('And The Beauty They Perceive', 'Teramaze', TO_DATE ('05.10.2021', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('Flight of The Wounded', 'Teramaze', TO_DATE ('03.10.2022', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('The Silent Achitect', 'Teramaze', TO_DATE ('07.05.2026', 'DD.MM.YYYY'), 'Progressive Metal');

DELETE FROM albums
    WHERE album_id = 14;

-- Brisanje radi duplog unosa


INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
VALUES
    -- Album 13: Anhedonia
    (13, 'Anhedonia', 297, 1, 9),
    (13, 'Without Red Hands', 204, 2, 8.7),
    (13, 'Through The Madness', 420, 3, 8.6),
    (13, 'Machine', 315, 4, 8.9),
    (13, 'Acts of Reparation', 355, 5, 8.2),
    (13, 'Fear of the Unknown', 285, 6, 8.5),
    (13, 'Black Circles', 412, 7, 8.7),
    (13, 'Proverb Le Jame', 275, 8, 8.6),
    (13, 'Where the Dead Grow', 445, 9, 9.3),
    (13, 'Egostatic', 320, 10, 8.6),
    (13, 'Ever Enhancing II', 490, 11, 8.4),

    -- Album 15: Her Halo
    (15, 'An Ordinary Dream (Enla Momento)', 769, 1, 9.4),
    (15, 'To Love, A Tyrant', 474, 2, 10),
    (15, 'Her Halo', 315, 3, 8.7),
    (15, 'Out of Subconscious', 323, 4, 9),
    (15, 'For The Innocent', 296, 5, 8.8),
    (15, 'Trapeze', 279, 6, 8.3),
    (15, 'Broken', 354, 7, 7.9),
    (15, 'Delusions of Grandeur', 583, 8, 8.4),

    -- Album 16: Are We Soldiers
    (16, 'Fight or Flight', 336, 1, 9.7),
    (16, 'Are We Soldiers', 414, 2, 8.4),
    (16, 'Control Conquer Collide', 465, 3, 9.6),
    (16, 'From Saviour to Assassin', 309, 4, 8.9),
    (16, 'Orwellian Times', 464, 5, 8.5),
    (16, 'M.O.N.S.T.E.R.S.', 344, 6, 8.4),
    (16, 'Weight of Humanity', 414, 7, 8.3),
    (16, 'Fact Resistant Human', 310, 8, 8.9),
    (16, 'The One Percent Disarm', 385, 9, 9),
    (16, 'Depopulate', 718, 10, 8.5),

    -- Album 17: I Wonder
    (17, 'Ocean Floor', 377, 1, 8.8),
    (17, 'Only Daylight', 452, 2, 9.3),
    (17, 'Lake 401', 216, 3, 7.4),
    (17, 'A Deep State of Awake', 523, 4, 9.1),
    (17, 'Here To Watch You', 403, 5, 9),
    (17, 'Sleeping Man', 299, 6, 8.6),
    (17, 'Idle Hands / The Devil''s Workshop', 556, 7, 8.9),
    (17, 'Run', 332, 8, 7.8),
    (17, 'This Is Not A Drill', 520, 9, 8.5),
    (17, 'I Wonder', 467, 10, 8.6),

    -- Album 18: And The Beauty They Perceive
    (18, 'And The Beauty They Perceive', 360, 1, 8.8),
    (18, 'Jackie Seth', 290, 2, 8.7),
    (18, 'Untide', 365, 3, 9),
    (18, 'Modern Living Space', 610, 4, 8.8),
    (18, 'Blood Of Fools', 382, 5, 9.2),
    (18, 'Waves', 277, 6, 7.9),
    (18, 'Son Rise', 345, 7, 8.7),
    (18, 'Search For The Unimaginable', 428, 8, 8.8),
    (18, 'Head Of The King', 671, 9, 8.4),

    -- Album 19: Flight of The Wounded
    (19, 'Flight of The Wounded', 643, 1, 7.8),
    (19, 'Gold', 349, 2, 8.2),
    (19, 'The Thieves Are Out', 410, 3, 8.3),
    (19, 'Until The Lights', 380, 4, 8),
    (19, 'Ticket to the Next Apocalypse', 470, 5, 9.4),
    (19, 'For The Thrill', 316, 6, 9.6),
    (19, 'Dangerous Me', 436, 7, 7.5),
    (19, 'Battle', 304, 8, 8.5),
    (19, 'In the Ruins of Angels', 427, 9, 8.8),

    -- Album 20: The Silent Architect
    (20, 'The Silent Architect', 612, 1, 9),
    (20, 'Doors of Yesterday', 264, 2, 9.4),
    (20, 'TheInvisible Countdown', 517, 3, 8.8),
    (20, 'Mr Crazy', 216, 4, 8),
    (20, 'Arrow', 289, 5, 8.3),
    (20, 'Dust And Bone', 263, 6, 8.4),
    (20, 'Enemy In The Garden', 506, 7, 9.4),
    (20, 'Ghost Hands', 324, 8, 8.7),
    (20, 'Left In The Fire', 715, 9, 8.9);


INSERT INTO albums (album_title, artist_name, release_date, genre)
    VALUES 
        ('The Amanuensis', 'Monuments', TO_DATE ('23.06.2014', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('Phronesis', 'Monuments', TO_DATE ('05.10.2018', 'DD.MM.YYYY'), 'Progressive Metal'),
        ('In Stasis', 'Monuments', TO_DATE ('15.04.2022', 'DD.MM.YYYY'), 'Progressive Metal');


INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
VALUES 
    -- Album 21: The Amanuensis
    (21, 'I, The Creator', 236, 1, 8.6),
    (21, 'Origin Of Escape', 243, 2, 8.8),
    (21, 'Atlas', 202, 3, 9.3),
    (21, 'Horcrux', 286, 4, 7.8),
    (21, 'Garden Of Sankhara', 288, 5, 8.3),
    (21, 'The Alchemist', 275, 6, 8.6),
    (21, 'Quasimodo', 302, 7, 8.4),
    (21, 'Saga City', 284, 8, 8.6),
    (21, 'Jinn', 248, 9, 8.7),
    (21, 'I, The Destroyer', 346, 10, 9.3),

    -- Album 22: Phronesis
    (22, 'A.W.O.L.', 243, 1, 7.9),
    (22, 'Hollow King', 174, 2, 7.6),
    (22, 'Vanta', 236, 3, 9),
    (22, 'Mirror Image', 297, 4, 9.1),
    (22, 'Ivory', 217, 5, 9.6),
    (22, 'Stygian Blue', 183, 6, 8.7),
    (22, 'Leviathan', 275, 7, 8.4),
    (22, 'Celeste', 219, 8, 8.9),
    (22, 'Jukai', 293, 9, 8.8),
    (22, 'The Watch', 256, 10, 8.5),

    -- Album 23: In Stasis
    (23, 'No One Will Teach You', 299, 1, 8.9),
    (23, 'Lavos', 250, 2, 7.7),
    (23, 'Cardinal Red', 281, 3, 8.9),
    (23, 'Opiate', 257, 4, 9.2),
    (23, 'Collapse', 282, 5, 8),
    (23, 'Arch Essence', 328, 6, 8.5),
    (23, 'Somnus', 249, 7, 8.8),
    (23, 'False Providence', 301, 8, 9),
    (23, 'Makeshift Harmony', 270, 9, 9.3),
    (23, 'The Cimmerian', 490, 10, 9.1);


UPDATE songs
    SET song_rating = 8.3
        WHERE song_name = 'Architect';


INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
VALUES 
    -- Album 11: End of the Circle
    (11, 'Numbers', 410, 1, 8.4),
    (11, 'Encryption', 394, 2, 8.9),
    (11, 'The Foundation', 444, 3, 9.3),
    (11, 'God Complex', 340, 4, 8.9),
    (11, 'Film the Nightmare', 343, 5, 8.5),
    (11, 'Distances', 394, 6, 8.6),
    (11, 'Final Disconnect', 365, 7, 8.7),
    (11, 'Circles', 430, 8, 9.7),
    (11, 'Openings', 136, 9, 8.9),
    (11, 'Chapters', 284, 10, 9),

    -- Album 12: Dark Scientific
    (12, 'Levitate', 444, 1, 8.6),
    (12, 'Falter', 409, 2, 9),
    (12, 'Apophenia', 423, 3, 9.4),
    (12, 'Cyberwar', 341, 4, 9.1),
    (12, 'Skyline Divided', 502, 5, 9.1),
    (12, 'Until the Light Takes Us', 358, 6, 8.7),
    (12, 'Collapse', 412, 7, 9),
    (12, 'Collateral', 125, 8, 8.5),
    (12, '3 Night with the Devil', 579, 9, 9.2),
    (12, 'Inanimate', 233, 10, 8.8),

    -- Album 3: Interdimensional Act III Shadows in the Sky
    (3, 'Shadows in the Sky', 567, 1, 9.3),
    (3, 'Rift', 424, 2, 8.9),
    (3, 'The Catalyst', 390, 3, 8.6),
    (3, 'Obsidian Sphere', 404, 4, 8.7),
    (3, 'Anomaly', 470, 5, 9),
    (3, 'Last Signal from the Collider', 240, 6, 8.7),
    (3, 'From Above', 312, 7, 8.8),
    (3, 'Tremor', 435, 8, 9.6),
    (3, 'Contact', 318, 9, 8.3),
    (3, 'The Simulation', 378, 10, 9),
    (3, 'Shadow', 202, 11, 8.5),

    -- Album 2: Interdimensional Act II Set Fire to Saturn
    (2, 'Parallel', 509, 1, 9),
    (2, 'Fireside', 405, 2, 8.9),
    (2, 'Empty', 358, 3, 8.3),
    (2, 'Dissociative', 433, 4, 9.6),
    (2, 'Aphasia', 316, 5, 8.4),
    (2, 'Infinite', 420, 6, 8.6),
    (2, 'Brimstone', 568, 7, 8.5);


INSERT INTO albums (album_title, artist_name, release_date, genre)
    VALUES 
        ('Venator', 'Mechina', TO_DATE ('01.01.2022', 'DD.MM.YYYY'), 'Symphonic Metal'),
        ('Bellum Interruptum', 'Mechina', TO_DATE ('23.03.2025', 'DD.MM.YYYY'), 'Symphonic Metal'),
        ('The Awry Ascent', 'Hungry Lights', TO_DATE ('11.10.2015', 'DD.MM.YYYY'), 'Experimental Metal'),
        ('Three Gods ' || '&' || ' Me', 'Hungry Lights', TO_DATE ('31.12.2017', 'DD.MM.YYYY'), 'Experimental Metal'),
        ('Mudoo Ra', 'Hungry Lights', TO_DATE ('01.04.2019', 'DD.MM.YYYY'), 'Experimental Metal');

SET DEFINE OFF;


INSERT INTO songs (album_id, song_name, song_duration, track_number, song_rating)
VALUES 
    -- Album 24: Venator
    (24, 'Suffer', 374, 1, 9),
    (24, 'Praise Hydrus', 484, 2, 8.6),
    (24, 'Sacrifice Zone', 438, 3, 9.9),
    (24, 'Totemic', 285, 4, 8.8),
    (24, 'Venator', 388, 5, 8.9),
    (24, 'Aphelion', 249, 6, 8),
    (24, 'The Embers of Old Earth', 452, 7, 9.1),
    (24, 'When Virtue Meets Steel', 423, 8, 8.7),

    -- Album 25: Bellum Interruptum
    (25, 'The World We Saved', 325, 1, 8.1),
    (25, 'Blessings Upon The Field Where Blades Will Flood', 312, 2, 9),
    (25, 'Cruelty Is the Point', 362, 3, 8.4),
    (25, 'The Plague Pit', 290, 4, 8.9),
    (25, 'The Wasteful Energy Of Words', 421, 5, 8.7),
    (25, 'Bellum Interruptum', 612, 6, 8.2),
    (25, 'On The Wings of Vecterra', 311, 7, 8.6),
    (25, 'Invictus Thales', 381, 8, 9.2),
    (25, 'When Honor Meant Something', 368, 9, 9.1),
    (25, 'The Collapse Promised To All', 315, 10, 9.1),
    (25, 'The Overwhelming Harmony of Collective Suffering', 385, 11, 9.3),

    -- Album 26: The Awry Ascent
    (26, 'An Outset In The Sea', 504, 1, 9.1),
    (26, 'Prite ' || '&' || ' Promise', 412, 2, 8.9),
    (26, 'The Fence', 435, 3, 9.7),
    (26, 'A Drunken Stalemate', 320, 4, 8.6),
    (26, 'Umber Tower', 414, 5, 9.3),
    (26, 'The Nimloks', 390, 6, 8.7),
    (26, 'The Awry Ascent', 409, 7, 9),
    (26, 'In The Eyes Of A Sword', 380, 8, 8.4),
    (26, 'Wither', 428, 9, 9.1),
    (26, 'Fothcrah', 460, 10, 8.9),

    -- Album 27: Three Gods & Me
    (27, 'For Miles Down', 402, 1, 9.1),
    (27, 'Reflaugh', 385, 2, 9),
    (27, 'Thief', 432, 3, 9.2),
    (27, 'The First God', 350, 4, 8.6),
    (27, 'Speared', 480, 5, 9.2),
    (27, 'Second Best', 390, 6, 8.8),
    (27, 'Finally Fearless', 372, 7, 8.5),
    (27, 'Three Gods ' || '&' || ' Me', 297, 8, 8.5),
    (27, 'Blueprint', 398, 9, 8.7),
    (27, 'Cowardice', 484, 10, 9.3),

    -- Album 28: Mudoo Ra
    (28, 'Pit Rat', 427, 1, 9.3),
    (28, 'Fate Won''t Pull Me Under', 357, 2, 8.8),
    (28, 'A Map To The Heavens', 412, 3, 8.7),
    (28, 'Dusk Bug', 340, 4, 9.1),
    (28, 'Hydra', 392, 5, 9.6),
    (28, 'The Waypoint', 315, 6, 8.5),
    (28, 'Red Thumb', 380, 7, 8.7),
    (28, 'Mudoo Ra', 290, 8, 8.8),
    (28, 'Reclipse', 485, 9, 9),
    (28, 'My Reward', 624, 10, 9);


INSERT INTO artists (artist_name, artist_country, personal_rank)
    VALUES 
        ('Seven', 'United States', 1),
        ('Hungry Lights', 'United States', 2),
        ('Teramaze', 'Australia', 3),
        ('Mechina', 'United States', 4),
        ('Monuments', 'United Kingdom', 5);
