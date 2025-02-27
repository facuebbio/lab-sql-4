use sakila;

## 1. Get film ratings.
select * from film;
select title, rating from film;

## 2. Get release years.
select title, release_year from film;

## 3. Get all films with ARMAGEDDON in the title.
select title as "Contains ARMAGEDDON" from film where title regexp "ARMAGEDDON";

## 4. Get all films with APOLLO in the title
select title as "Contains APOLLO" from film where title like "%ARMAGEDDON%";

## 5. Get all films which title ends with APOLLO.
select * from film where title regexp "APOLLO$";

## 6. Get all films with word DATE in the title.
select * from film where title regexp "DATE";

## 7. Get 10 films with the longest title.
select title as longest_title_films from film order by length(title) desc limit 10;

## 8. Get 10 the longest films.
select * from film order by length desc limit 10;

## 9. How many films include Behind the Scenes content?
select count(special_features) as "Include: Behind the Scenes" from film where special_features regexp "Behind the Scenes";

## 10. List films ordered by release year and title in alphabetical order.
select * from film order by release_year asc, title asc;





