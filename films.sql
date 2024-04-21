use lco_films;

show tables;

-- to get the rows of particular table we use SELECT command 
select * from actor;

select actor_id, first_name from actor;

select actor_id as ID, first_name as NAME from actor;

-- You can fetch details of a table using DESC (describe) command
desc actor;


select * from film;

-- for filtering data we use WHERE 
select * from film where release_year >= 2019 and rental_duration < 5 ;

select * from film where  title = "guys FALCON" ;

-- LIKE operator -> substring matching, prefix matching, suffix matching

-- prefix matching -> where column LIKE "prefix_string%"
select * from film where title like "AL%" ;

-- suffix matching -> where column LIKE "%suffix_string"
select * from film where title like "%AN";

-- substring matching -> where column LIKE "%substring_string%"
select * from film where title like "%IN%";

-- order or sort the data

-- to sort the data we have 'ORDER_BY' clause
-- you can write order_by and mention the columns based on which you want to order the data
select * from film order by release_year; 
select * from film order by release_year desc; 
select * from film order by release_year asc;

-- custom multi-column ordering is also possible
-- we can give comma separated conditions for this

select * from film order by release_year desc, title asc;

-- pagination or limit in sql
select * from film order by release_year desc, title asc limit 5 offset 10;
-- page_size -> x, then offset -> page_number * x -> 0 based indexing



-- update can be done using the update command
-- update table_name SET column_to_update1 = value1, column_to_update2 = value2;

update film set release_year = 2008 where film_id = 658;
select * from film where film_id = 658;


-- delete fromm table
select * from film_category where category_id = 11 order by category_id;
delete from film_category where category_id = 11;
select * from film_category where category_id = 11 order by category_id;
