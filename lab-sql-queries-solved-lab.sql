USE SAKILA;

SELECT
    film.title AS film_title,
    COUNT(inventory.inventory_id) AS num_copies
FROM
    film
JOIN
    inventory ON film.film_id = inventory.film_id
WHERE
    film.title = 'Hunchback Impossible'
GROUP BY
    film.title;



SELECT
    film.title AS film_title,
    film.length
FROM
    film
WHERE
    film.length > (SELECT AVG(length) FROM film);
    
    
    
SELECT
    actor.actor_id,
    actor.first_name,
    actor.last_name
FROM
    actor
JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
JOIN
    film ON film_actor.film_id = film.film_id
WHERE
    film.title = 'Alone Trip';


