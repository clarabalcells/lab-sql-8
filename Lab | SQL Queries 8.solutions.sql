#Rank films by length (filter out the rows with nulls or zeros in length column). Select only columns title, length and rank in your output.

USE sakila;
SELECT title,description,length FROM film
ORDER BY length DESC;


#Rank films by length within the rating category (filter out the rows with nulls or zeros in length column). In your output, only select the columns title, length, rating and rank.

USE sakila;
SELECT title,description,rating,length FROM film
ORDER BY length DESC;


#How many films are there for each of the categories in the category table? Hint: Use appropriate join between the tables "category" and "film_category".

SELECT * FROM film_category;
SELECT * FROM FILM;
SELECT * FROM category;

SELECT FC.category_id , count(FC.film_id), MC.name FROM film_category as FC 
inner join category as MC
on FC.category_id = MC.category_id
group by category_id;


#Which actor has appeared in the most films? Hint: You can create a join between the tables "actor" and "film actor" and count the number of times an actor appears.

SELECT * from actor

SELECT * from film
SELECT * from film_actor
SELECT * from actor;


SELECT * FROM  film, FILM_ACTOR, ACTOR;
JOIN (SELECT actor_id, film_id from film_actor) as film
ON film.title = actor.first_name, actor.second_name
GROUP BY actor_id
ORDER BY DESC;


#Which is the most active customer (the customer that has rented the most number of films)? Hint: Use appropriate join between the tables "customer" and "rental" and count the rental_id for each customer.

SELECT * FROM customer
SELECT * FROM RENTAL

select concat(c.first_name, c.last_name) as 'Customer Name', sum(p.rental_date) as 'Total Rent'
	from payment as p
	join rental as c
	on p.customer_id = c.customer_id
	group by p.customer_id;
    
    

#Bonus: Which is the most rented film? (The answer is Bucket Brotherhood).