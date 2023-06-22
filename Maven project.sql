 /*task1 Write a SQL query to count the number of characters except for the spaces for each actor. Return the 10 actors' name lengths along with their names*/
 1. select first_name,last_name,length(first_name)+length(last_name)'length of names' from actor limit 10;
 
/*task 2 List all Oscar awardees(Actors who received the Oscar award) with their full names and the length of their names.*/
 2. select concat(actor_award.first_name,actor_award.last_name) as 'oscar awardees', length(concat(actor_award.first_name,actor_award.last_name))as 'length ofactor' from actor_award
 where actor_award.awards='oscar';
 
/* task 3 Find the actors who have acted in the film 'Frost Head'*/
 3. select concat(first_name,last_name) actor_name,title from actor a inner join film_actor fa on fa.actor_id = a.actor_id
 inner join film f on f.film_id=fa.film_id where f.title ='frost head';
 
 /*task 4 Pull all the films acted by the actor 'Will Wilson'*/
 4. select concat(first_name,last_name)actor_name,title from actor a inner join film_actor fa on
 fa.actor_id=a.actor_id inner join film f on f.film_id=fa.film_id where first_name ='will' and last_name='wilson';
 
 /* task 5 Pull all the films which were rented and return them in the month of May */
 5. select title,rental_date from rental r inner join inventory i on i.inventory_id=r.inventory_id
 inner join film f on f.film_id=i.film_id where month(return_date)='5';
 
/* task 6 Pull all the films with "Comedy category'*/
 6.select title as film_name,name as film_category from film_text
 join film_category on film_text.film_id=film_category.film_id
 join category on film_category.category_id=category.category_id
 where name='comedy';