
-- Question 1
/*1. How many actors are there with the last name ‘Wahlberg’?
 */
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

--There are 2 actors with that last name

-- Question 2
/*2. How many payments were made between $3.99 and $5.99?
 */
SELECT amount
FROM payment
WHERE amount between 3.99 AND 5.99;

-- Only two payments 

--Question 3
/*3. What film does the store have the most of? (search in inventory)
 */
select film_id, count(film_id)
from inventory 
group by film_id
order by film_id

/* there are many films will a count of 8 which is the highest amount in the store for the count of a film
Academy Dinosaur being the first value. */

-- Question 4
/*4. How many customers have the last name ‘William’?
 */
SELECT first_name ,last_name
FROM customer 
where last_name = 'Williams'

-- None, but there is one "Linda Williams" 

--Question 5
/* 5. What store employee (get the id) sold the most rentals?
*/
select staff_id, count(amount) from payment group by staff_id order by staff_id 

--Jon sold the most rentals at 7304 compared to Mike at 7292

-- Question 6
/* 6. How many different district names are there? */
select address_id from store;

-- There are two active addresses with ids 1 & 2, but there are a total of 100 addresses in the system

-- Question 7
/* What film has the most actors in it? (use film_actor table and get film_id) */
select film_id, count(actor_id) from film_actor group by film_id  

-- Lambs Cincinatti (film_id - 508) has a count of 15 actor_id's 

-- Question 8
/*From store_id 1, how many customers have a last name ending with ‘es’? (use customer table */
select store_id , last_name from customer where last_name like '%es' 

-- A total of 13 customers has a last name ending with 'es'

/*-- Question 9 
How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
with ids between 380 and 430? (use group by and having > 250)*/

select amount, count(amount)
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;

-- 3 payment amounts

/*Question 10 
 *  Within the film table, how many rating categories are there? And what rating has the most 
movies total?
 */
select count(film_id), rating from film group by rating order by rating

-- There are 5 rating categories and PG-13 has the most with 224 films


