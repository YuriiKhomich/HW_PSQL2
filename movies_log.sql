

movies=# SELECT * FROM films
movies-# WHERE imdb > 8;

movies=# SELECT * FROM films
movies-# WHERE imdb > 8 AND director = 'Cameron';

movies=# SELECT * FROM films
movies-# WHERE imdb > 8 AND director = 'Cameron' OR director = 'Hitchcock';

movies=# SELECT * FROM films
movies-# WHERE release_year BETWEEN '1995-01-01' AND '2020-01-01';

movies=# SELECT film_name, director FROM films
movies-# WHERE director IN ('Cameron','Hitchcock');

movies=# SELECT film_name,director_lname
movies-# FROM films
movies-# INNER JOIN directors ON (directors.director_id = films.dir_id);

movies=# SELECT film_name,director_lname
movies-# FROM films
movies-# LEFT JOIN directors ON (directors.director_id = films.dir_id);

movies=# SELECT actors.actor_fname,films.film_name
movies-# FROM actors,films,actors_films
movies-# WHERE actors_films.act_id = actors.actor_id AND actors_films.fm_id = films.film_id;

