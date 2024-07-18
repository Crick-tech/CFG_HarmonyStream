CREATE DATABASE HARMONYSTREAM_CFG

USE HARMONYSTREAM_CFG

CREATE TABLE Users (
user_id INT PRIMARY KEY,
username VARCHAR(50),
email VARCHAR(100),
password VARCHAR(100),
signup_date DATE
);

CREATE TABLE Artists (
artist_id INT PRIMARY KEY,
name VARCHAR(100),
genre VARCHAR(50),
country VARCHAR(50),
debut_year INT
);

CREATE TABLE Albums (
album_id INT PRIMARY KEY,
title VARCHAR(100),
artist_id INT,
release_date DATE,
FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

CREATE TABLE Songs (
song_id INT PRIMARY KEY,
title VARCHAR(100),
album_id INT,
duration INT,
genre VARCHAR(50),
FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE Playlists (
playlist_id INT PRIMARY KEY,
user_id INT,
name VARCHAR(100),
creation_date DATE,
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Playlist_Songs (
playlist_id INT,
song_id INT,
PRIMARY KEY (playlist_id, song_id),
FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

CREATE TABLE Listening_History (
history_id INT PRIMARY KEY,
user_id INT,
song_id INT,
listening_date DATE,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

INSERT INTO Users (user_id, username, email, password, signup_date) VALUES
(1, 'Christine_Rick', 'crickard@example.com', 'welcome2025', '2022-07-09'),
(2, 'jane_smith', 'jane.smith@example.com', 'password123', '2022-02-15'),
(3, 'michael_jones', 'michael.jones@example.com', 'password123', '2022-03-10'),
(4, 'sarah_lee', 'sarah.lee@example.com', 'password123', '2022-04-22'),
(5, 'patrick_o\'connor', 'patrick.oconnor@example.com', 'password123', '2022-05-05'),
(6, 'emily_brown', 'emily.brown@example.com', 'password123', '2022-06-17'),
(7, 'brian_murphy', 'brian.murphy@example.com', 'password123', '2022-07-09'),
(8, 'megan_o\'neill', 'megan.oneill@example.com', 'password123', '2022-08-30'),
(9, 'daniel_wilson', 'daniel.wilson@example.com', 'password123', '2022-09-21'),
(10, 'claire_martin', 'claire.martin@example.com', 'password123', '2022-10-12'),
(11, 'karen_kelly', 'karen.kelly@example.com', 'password123', '2022-11-03');


INSERT INTO Artists (artist_id, name, genre, country, debut_year) VALUES
(1, 'Taylor Swift', 'Pop', 'USA', 2006),
(2, 'Billie Eilish', 'Alternative/Indie', 'USA', 2015),
(3, 'Ed Sheeran', 'Pop', 'UK', 2011),
(4, 'BTS', 'K-Pop', 'South Korea', 2013),
(5, 'Dua Lipa', 'Pop', 'UK', 2015),
(6, 'Drake', 'Hip-Hop/Rap', 'Canada', 2006),
(7, 'The Weeknd', 'R&B/Soul', 'Canada', 2010),
(8, 'Ariana Grande', 'Pop', 'USA', 2008),
(9, 'Olivia Rodrigo', 'Pop', 'USA', 2020),
(10, 'Harry Styles', 'Pop/Rock', 'UK', 2010),
(11, 'Bad Bunny', 'Reggaeton/Latin Trap', 'Puerto Rico', 2016);

INSERT INTO Albums (album_id, title, artist_id, release_date) VALUES
(1, 'Folklore', 1, '2020-07-24'),
(2, 'Evermore', 1, '2020-12-11'),
(3, 'Lover', 1, '2019-08-23'),
(4, 'Reputation', 1, '2017-11-10'),
(5, 'Happier Than Ever', 2, '2021-07-30'),
(6, 'Divide', 3, '2017-03-03'),
(7, 'BE', 4, '2020-11-20'),
(8, 'Future Nostalgia', 2, '2020-03-27'),
(9, 'Certified Lover Boy', 1, '2021-09-03'),
(10, 'After Hours', 3, '2020-03-20'),
(11, 'Positions', 3, '2020-10-30'),
(12, 'SOUR', 4, '2021-05-21'),
(13, 'Fine Line', 4, '2019-12-13'),
(14, 'YHLQMDLG', 3, '2020-02-29'),
(15, 'Here And Now', 1, '2021-09-03'),
(16, 'Happy Hour', 2, '2020-03-20'),
(17, 'Cold Case', 2, '2020-10-30'),
(18, 'Sugar', 2, '2021-05-21'),
(19, 'Midnight Train', 1, '2019-12-13');

INSERT INTO Songs (song_id, title, album_id, duration, genre) VALUES
(1, 'Cardigan', 1, 240, 'Pop'),
(2, 'Willow', 2, 215, 'Pop'),
(3, 'Lover', 3, 221, 'Pop'),
(4, 'Look What You Made Me Do', 4, 211, 'Pop'),
(5, 'Therefore I Am', 5, 174, 'Alternative/Indie'),
(6, 'Shape of You', 5, 233, 'Pop'),
(7, 'Dynamite', 7, 199, 'K-Pop'),
(8, 'Don\'t Start Now', 7, 183, 'Pop'),
(9, 'Cruel Summer', 3, 258, 'Pop'),
(10, 'Blinding Lights', 7, 200, 'R&B/Soul'),
(11, '34+35', 3, 173, 'Pop'),
(12, 'Drivers License', 5, 242, 'Pop'),
(13, 'Adore You', 3, 207, 'Pop/Rock'),
(14, 'Vete', 3, 192, 'Reggaeton/Latin Trap');

INSERT INTO Playlists (playlist_id, user_id, name, creation_date) VALUES
(1, 1, 'Top Hits 2023', '2023-01-10'),
(2, 2, 'Chill Vibes', '2023-02-14'),
(3, 3, 'Workout Playlist', '2023-03-01'),
(4, 4, 'Road Trip', '2023-03-22'),
(5, 5, 'Party Mix', '2023-04-15'),
(6, 6, 'Focus Music', '2023-05-05'),
(7, 7, 'Relaxing Tunes', '2023-06-10'),
(8, 8, 'Love Songs', '2023-07-01'),
(9, 9, 'Summer Hits', '2023-07-20'),
(10, 10, 'Throwback Jams', '2023-08-15'),
(11, 11, 'Dance Party', '2023-09-01');

INSERT INTO Playlist_Songs (playlist_id, song_id) VALUES
(1, 1),
(1, 2),
(2, 7),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 5),
(6, 7),
(6, 12),
(7, 1),
(8, 2),
(9, 5),
(10, 4),
(11, 5);


INSERT Listening_History (history_id, user_id, song_id, listening_date) VALUES
(1, 1, 1, '2023-01-11'),
(2, 2, 7, '2023-02-15'),
(3, 3, 1, '2023-03-02'),
(4, 4, 5, '2023-03-23'),
(5, 1, 1, '2023-04-16'),
(6, 6, 1, '2023-05-06'),
(7, 7, 1, '2023-06-11'),
(8, 8, 4, '2023-07-02'),
(9, 9, 1, '2023-07-21'),
(10, 10, 1, '2023-08-16'),
(11, 11, 3, '2023-09-02'),
(12, 2, 2, '2023-01-20'),
(13, 1, 5, '2023-02-18'),
(14, 4, 4, '2023-03-05'),
(15, 5, 5, '2023-04-02'),
(16, 6, 7, '2023-05-11'),
(17, 1, 7, '2023-06-14'),
(18, 8, 8, '2023-07-05'),
(19, 1, 9, '2023-07-25'),
(20, 10, 7, '2023-08-20'),
(21, 11, 5, '2023-09-05'),
(22, 1, 1, '2023-01-22'),
(23, 2, 7, '2023-01-25'),
(24, 3, 14, '2023-02-01');


-- find the top 3 most popular song based on listening history 

SELECT 
s.title AS song_title, -- select the name of the song
COUNT(Lh.song_id) AS play_count -- select the number of times the song has been played
FROM Songs s
JOIN Listening_History Lh ON s.song_id = Lh.song_id -- join wtih listening history to see what songs to the listening history
GROUP BY song_title -- group by song name 
HAVING play_count >1  
ORDER BY play_count DESC -- order from high to low 
LIMIT 3;


-- find the top 3 most popular album based on listening history 

SELECT 
a.title AS album_title,                            -- select the name of album 
COUNT(Lh.song_id) AS play_count                    -- select the number of times the album has been played
FROM Albums a
JOIN Songs s ON a.album_id = s.album_id                   -- join with songs to see what songs relate to what album
JOIN Listening_History Lh ON s.song_id = Lh.song_id        -- join wtih listening history to see what songs to the listening history
GROUP BY album_title   
HAVING play_count >1                                       -- order by album name
ORDER BY play_count DESC
LIMIT 3;

-- Create a view that finds the the users playlist based on listening history 

CREATE VIEW user_playlists AS
SELECT 
u.user_id,     -- select the user ID
u.username, -- select the username
p.playlist_id, -- select the playlist ID
p.name AS playlist_name, -- rename to be playlist name title 
s.song_id, -- select song ID
s.title AS song_title, -- rename title in song table to song title 
s.genre, -- select the genre from song table 
a.album_id, -- select ablum ID
a.title AS album_title, -- rename the title from album table to be album title 
ar.artist_id, -- select arist ID
ar.name AS artist_name -- rename the name field in aritst table to artist name 
FROM Users u
JOIN Playlists p ON u.user_id = p.user_id
JOIN Playlist_Songs ps ON p.playlist_id = ps.playlist_id
JOIN Songs s ON ps.song_id = s.song_id
JOIN Albums a ON s.album_id = a.album_id
JOIN Artists ar ON a.artist_id = ar.artist_id;      

-- Use the view to find the most popular playlists​
SELECT 
up.playlist_name AS Playlist_name, -- rename to be playlist name 
COUNT(up.playlist_id) AS playlist_count, -- count the number of times that playlist appears in list
COUNT(up.user_id) AS User_count -- count the number of users that appear 
FROM user_playlists up 
GROUP BY 
up.playlist_name
HAVING playlist_count >1 -- removing any playlist with only 1 count
ORDER BY 
playlist_count DESC ;          

-- Use the view to find the top 3 artists with the most play count from everyone's playlists
DELIMITER //
CREATE PROCEDURE get_top_3_artists()  -- Using a procedure here as beter at handling complex logics to have more than 1 result 
BEGIN
CREATE TEMPORARY TABLE IF NOT EXISTS top_3_artists ( -- creating a temp table store the data collected temporarily within the procedure.
artist_id INT,
play_count INT
);
INSERT INTO top_3_artists (artist_id, play_count)
SELECT up.artist_id,
COUNT(lh.song_id) AS play_count
FROM user_playlists up
JOIN Listening_History lh ON up.song_id = lh.song_id
GROUP BY 
up.artist_id
ORDER BY 
play_count DESC
LIMIT 3;
END //

DELIMITER ;

CALL get_top_3_artists(); -- populates the temporary table with the top artists based on play counts from Listening history
SELECT 
up.artist_id, -- select artist ID 
up.artist_name, -- select arist name 
COUNT(lh.song_id) AS play_count -- total count of songs played from listening history 
FROM user_playlists up 
JOIN Listening_History lh ON up.song_id = lh.song_id  -- link user playlist song id to the listening history song id 
WHERE up.artist_id IN (SELECT artist_id FROM top_3_artists) 
GROUP BY 
up.artist_id, -- group by artist ID & Name to prevent multiple rows for same artist
up.artist_name
ORDER BY 
play_count DESC;

-- update table on username
UPDATE Users
SET username = 'CFG_Christine'
WHERE user_id = 1;

-- Find the users Favourite Artist based on listening history 

-- Define the function to get the most popular artist for a specific user or 1 result 
DELIMITER //
CREATE FUNCTION GetMostPopularArtistForUser(userName VARCHAR(50))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
DECLARE popularArtist VARCHAR(255);
    -- Select the most popular genre for the given user
SELECT up.artist_name -- select the artist name from user playlist
INTO popularArtist -- add to the popularartist  
FROM user_playlists up
WHERE up.username = userName -- where the username in userplaylist table = username in the function
GROUP BY up.artist_name -- group together by arist to prevent multiple rows from different playlists
ORDER BY COUNT(up.song_id) DESC 
LIMIT 1;
RETURN popularArtist;
END //
DELIMITER ;

-- Select the user you want to see whos favourite genre

SELECT GetMostPopularArtistForUser('CFG_Christine');

-- Report history for user CFG_Christine

SELECT 
u.username,                                -- User's username
s.title AS song_title,                    -- Name of song listened to
s.genre AS song_genre,                     -- Genre of that song
a.title AS album_title,                    -- Name of the album containing the song
lh.listening_date                            -- Date and time when the song was listened to
FROM Users u                                    -- From the Users table
JOIN Listening_History lh ON u.user_id = lh.user_id  -- Join with Listening_History on user_id
JOIN Songs s ON lh.song_id = s.song_id          -- Join with Songs on song_id
JOIN Albums a ON s.album_id = a.album_id        -- Join with Albums on album_id
WHERE u.username = 'CFG_Christine'               -- Look for the user with username 'CFG_Christine'
ORDER BY 
lh.listening_date DESC;                       -- Order by the date and time when the song was listened to


-- All tables -- 
-- SELECT * FROM USERS
-- SELECT * FROM Artists
-- SELECT * FROM ALBUMS
-- SELECT * FROM SONGS
-- SELECT * FROM PLAYLISTS
-- SELECT * FROM PLAYLIST_SONGS
-- SELECT * FROM LISTENING_HISTORY
-- SELECT * FROM user_playlists
