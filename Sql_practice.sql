use lco_films;

--  TO create a table we do 
-- CREATE TABLE <table name> (col1_name type_of_col1 ...Attributes, col2_name type_of_col2...)
CREATE TABLE IF NOT EXISTS Theatre (
ID integer NOT NULL UNIQUE auto_increment ,
 Name VARCHAR(50) NOT NULL,
 Description TEXT);

-- Delete a table
DROP TABLE Theatre;

DESC Theatre;

-- Insert data into table

INSERT into Theatre (Name, Description) VALUES("PVR ARVED TRANSCUBE", "Some description");
INSERT into Theatre (Name, Description) VALUES("CinePoll Thaltej", "Theatre description...");

-- Bulk insert 
INSERT into Theatre
(Name, Description) VALUES
("Banana Cineplax", "Luxury cinema"),
("Rajhansh", "3d experience"),
("INOX Satelite", "4dx experience");

SELECT * from Theatre;

-- Figure out the numver of films which were released in the year of 2017...
Select count(*), release_year from film  group by release_year having release_year = 2017;


-- add / remove colum from table
alter table Theatre drop Description;

alter table Theatre add Description text not null ;

SELECT * from Theatre;

select * from film;

-- keys
-- primary key --> single or set of columns {primary key is never be null}
-- Foregin Key --> It refers to a primary key of another table inside a table


select * from film limit 5;
select * from language limit 5;

select film_id, title, first_name from actor inner join film_actor on actor.actor_id = film_actor.actor_id inner join film_actor on  film_actor.film_id = film.film_id;

-- Film_id, title, Description, release_year, language
-- 1, ACADEMY DINOSAUR, dec.., 2019, English 

-- Task: Club the results of film and language table, so taht we can see the language instead of the language_id, directly along with the film details

select film_id, title, description, release_year, name from film join language; -- Outer Join

select film_id, title, description, release_year, name from film inner join language on film.language_id = language.language_id; -- Outer Join + filter = Inner join



-- Left join

select * from film_actor left join film on film_actor.film_id = film.film_id;












select * from film_actor where film_id = 1 limit 5;
select * from actor where actor_id in(1,10,20,30,40) limit 5;


-- you want to print for every film, name of the film and the actor of the film in everyrow, we will have name of film and one actor detail
-- Example:- ACADEMY DINOSAUR, Penelope Guniess (1st row)
-- Example:- ACADEMY DINOSAUR, Christian Gable (2nd row)
-- ...



