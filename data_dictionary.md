# Data Dictionary - Music Streaming System
## Overview 
This file showcases all the tables, columns and relationships within the Music Streaming System built using Supabase.

## Tables
# 1. ARTISTS
*Purpose* - sotres informations about all artists in the music streaming system

| Column Name | Data Type        | Description                                                             |
| ----------- | ---------------- | ----------------------------------------------------------------------- |
| artist_id   | SERIAL / INTEGER | Unique identifier for each artist (Primary Key).                        |
| artist_name | VARCHAR(100)     | Full name or stage name of the artist.                                  |
| genre       | VARCHAR(50)      | Type of music the artist performs (e.g., Pop, Gospel, R&B).             |
| country     | VARCHAR(50)      | Country where the artist originates from.                               |
| debut_year  | INTEGER          | Year when the artist started their career or released their first song. |
| created_at  | TIMESTAMP        | Date and time the record was created (auto-generated).                  |

# 2. ALBUMS
*Purpose*- acts as a link between artists and songs 
| Column Name  | Data Type        | Description                                                 |
| ------------ | ---------------- | ----------------------------------------------------------- |
| album_id     | SERIAL / INTEGER | Unique identifier for each album (Primary Key).             |
| artist_id    | INTEGER (FK)     | References the artist who released the album.               |
| album_title  | VARCHAR(100)     | Title of the album.                                         |
| release_date | INTEGER          | Year the album was released.                                |
| genre        | VARCHAR(50)      | Genre or style of music for the album.                      |
| label        | VARCHAR(50)      | Recording label of the album.                               |

# 3. SONGS
*Purpose* - stored detailed information about each individual track 
| Column Name  | Data Type        | Description                                         |
| ------------ | ---------------- | --------------------------------------------------- |
| song_id      | SERIAL / INTEGER | Unique identifier for each song (Primary Key).      |
| artist_id    | INTEGER (FK)     | References the artist who performed the song.       |
| album_id     | INTEGER (FK)     | References the album where the song appears.        |
| song_title   | VARCHAR(100)     | Title of the song.                                  |
| genre        | VARCHAR(50)      | Type of music (e.g., Pop, Gospel, HipHop, Lingala). |
| duration     | TIME             | Total playtime of the song.                         |
| release_date | DATE             | The date the song was officially released.          |

## Relationships

This music streaming database follows a one-to-many relational structure;

One Artist → Many Albums
Each artist can release several albums, but each album belongs to one artist.

One Album → Many Songs
Each album contains multiple songs, but each song belongs to only one album.

One Artist → Many Songs
Artists can perform many songs directly (across albums or singles).

```Artists
│
├── artist_id (PK)
│
│   1 ────< artist_id
│
└─────── Albums
        │
        ├── album_id (PK)
        │
        │   1 ────< album_id
        │
        └─────── Songs
```
