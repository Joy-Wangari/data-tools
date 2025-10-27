# DATA TOOLS FINAL PROJECT-MUSIC STREAMING SYSTEM


<div align="center">
  <!-- You are encouraged to replace this logo with your own! Otherwise you can also remove it. -->
  <img width="314" height="285" alt="image" src="https://github.com/user-attachments/assets/20661293-a214-4004-9042-657102fb0710" />
  <br/>

  <h3><b>Joy's ReadME Template</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 A Music Streaming System <a name="about-project"></a>

> A database system for mananging online music streaming services including tables such as artists, songs and albums for easy access for online users. 

**Music Streaming System** is a database developed on PostgreSQL Development Platform to be used for managing online music streaming platforms and tracking artists, songs and albums. 

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> Describe the tech stack and include only the relevant sections that apply to your project e.g SQL.

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">Supabase</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">SQL</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.

- **Artist Management** - View artist's profile with genre, country and debut year
- **Album Management** - Browse albums by release date, artist or genre
- **Search and Discovery** - Advanced search by artist, genre, release date or album

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Describe how a new developer could make use of your project.

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

 - Set up an account on Supabase 
Example command:https://supabase.com/

 - Set up an account on GitHub to host the project

 - Install or have access to PostgreSQL 

 - Prior knowledge on SQL 

 - Technical knowledge on database design


### Setup
1. Create a Supabase project at https://supabase.com/
2. Clone this repository to your github
   
Clone this repository to your desired folder:
```sh
https://github.com/JoyWangari/data-tools.git
cd data-tools
```

### Install

Install this project with:
1. Open Supabase dasboard
2. Navigate to the 3rd incom on top left - SQL Editor
3. Copy and paste contents of the file schema.sql
4. Select RUN CTRL to create tables and execute commands such as retrieving information. 
<!--
Example command:

```sh
  cd my-project
  gem install
```
--->

### Usage

To run the project, execute the following command:
1. Open Supabase SQL Editor
Go to https://app.supabase.com, your project, SQL Editor
2. Run the schema file schema.sql
3. Run the sample data inserts

```-- schema.sql
CREATE SCHEMA Music;
CREATE TABLE Music.Artists (...);
CREATE TABLE Music.Albums (...);
CREATE TABLE Music.Songs (...);
```


### Run tests

To run tests, run the following command:
1. To find all artists 
```
SELECT *
FROM Music.Artists;
```
2. To find all information on Gospel songs
```
SELECT *
 FROM Music.Songs
WHERE genre = 'Gospel';
```
3. To find artist and song tiltle
```
SELECT a.rtist_name, s.song_title
FROM Music.Artists a
JOIN Music.Songs s ON a.artist_id = s.artist_id;
```
### Deployment

You can deploy this project using:
1. Go to Supabase
2. Open the project - SQL Editor
3. Export your schema to schema.sql
4. Commit and push to GitHub.
5. Add Supabse project link in your Readme.md 
<!--
Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Author1**

- GitHub: [@JoyWangari](https://github.com/JoyWangari)
- LinkedIn: [Joy Njeri](https://linkedin.com/in/joy-njeri)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **Users Table** - Contains details of all users, name and email, links users to playlists 
- [ ] **Playlists Table** - Allows users to create different playlists based on preferences
- [ ] **Song Ratings** - Allows users to rate or like songs 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Support this project that can be used to manage music streaming services

If you like this project, please give it a star ⭐️ and follow this account 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **How does your database schema handle relationships between users, albums and songs?**

  - The database uses a relational structure where foreign keys define connections between tables to ensure data consistency and avoid duplication.

- **How can this project be extended into a full stack music streaming app?**

  - By integrating both backend and frontend technologies. Supabase for backend and React for frontend. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
