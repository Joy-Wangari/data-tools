--Music Streaming System Database Schema
--Databse created using Supabase Postgres Database 
--Create Artists Table
CREATE SCHEMA MUSIC;
CREATE TABLE MUSIC.Artists (
  artist_id SERIAL PRIMARY KEY,
  artist_name VARCHAR(100) NOT NULL,
  genre VARCHAR(50),
  country VARCHAR(50),
  debut_year INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Create Songs Table 
CREATE TABLE MUSIC.Songs (
  song_id SERIAL PRIMARY KEY,
  artist_id INT,
  album_id INT,
  song_title VARCHAR(100),
  genre VARCHAR(50),
  duration TIME,
  release_date DATE
);

--Create Albums Table
CREATE TABLE MUSIC.Albums (
  album_id SERIAL PRIMARY KEY,
  artist_id INT,
  album_title VARCHAR(100),
  release_date DATE,
  genre VARCHAR(50),
  label VARCHAR(50)
);

--Insert data into Artists Table
INSERT INTO MUSIC.Artists(artist_name,genre,country,debut_year)
VALUES
('Kestin Mbogo', 'Gospel', 'Kenya', 2015),
('Kanji Mbugua', 'Gospel', 'Kenya', 2005),
('Nyashinski', 'R&B', 'Congo', 2010),
('Ed Sheran', 'Pop', 'UK', 2013),
('Alice Kimanzi', 'Lingala', 'Tanzania',2011),
('Praise Onjula', 'HipHop', 'Uganda', 2020);

--Insert sample data into Songs Table
INSERT INTO MUSIC.Songs(artist_id,album_id,song_title,genre,duration,release_date)
VALUES
(5, 2, 'Come to the Father', 'Gospel', '00:21:06', '2025-11-13'),
(68, 91, 'Kama si We', 'Gospel', '00:13:24', '2024-06-12'),
(12, 45, 'Perfect Design', 'R&B', '00:05:21', '2023-06-12'),
(212, 78, 'Perfect', 'Pop', '00:14:00', '2018-07-10'),
(708, 23, 'Yule Yule', 'Lingala', '00:15:23', '2015-08-21'),
(230, 3, 'Naishi', 'HipHop', '00:14:23', '2024-09-11');

--Insert sample data into Albums Table
INSERT INTO MUSIC.Albums(artist_id,album_title,release_date,genre,label)
VALUES
(5, 'The Father''s Heart', '2025-11-13', 'Gospel', 'Heavenly Sounds'),
(68, 'Faithful Love', '2024-06-12', 'Gospel', 'Grace Records'),
(12, 'Perfect Design', '2023-06-12', 'R&B', 'Nyashinski Ltd'),
(212, 'Divide', '2018-07-10', 'Pop', 'Asylum Records'),
(708, 'Lingala Vibes', '2015-08-21', 'Lingala', 'Congo Beats'),
(230, 'Street Gospel', '2024-09-11', 'HipHop', 'Zozanation');

--Example of test queries on Supabase
--Test query for obtaining all artists
SELECT *
  FROM MUSIC.Artists;
| artist_id | artist_name   | genre   | country  | debut_year | created_at                 |
| --------- | ------------- | ------- | -------- | ---------- | -------------------------- |
| 1         | Kestin Mbogo  | Gospel  | Kenya    | 2015       | 2025-10-17 13:44:23.660022 |
| 2         | Kestin Mbogo  | Gospel  | Kenya    | 2015       | 2025-10-17 13:48:10.027756 |
| 3         | Kestin Mbogo  | Gospel  | Kenya    | 2015       | 2025-10-17 13:59:33.540636 |
| 4         | Kanji Mbugua  | Gospel  | Kenya    | 2005       | 2025-10-17 13:59:33.540636 |
| 5         | Nyashinski    | R&B     | Congo    | 2010       | 2025-10-17 13:59:33.540636 |
| 6         | Ed Sheran     | Pop     | UK       | 2013       | 2025-10-17 13:59:33.540636 |
| 7         | Alice Kimanzi | Lingala | Tanzania | 2011       | 2025-10-17 13:59:33.540636 |
| 8         | Praise Onjula | HipHop  | Uganda   | 2020       | 2025-10-17 13:59:33.540636 |

--Test query for obtaining songs released in 2025
| artist_id | album_id | song_title         | genre  | duration | release_date |
| --------- | -------- | ------------------ | ------ | -------- | ------------ |
| 5         | 2        | Come to the Father | Gospel | 00:21:06 | 2025-11-13   |

