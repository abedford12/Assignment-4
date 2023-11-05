
select avg(film.length), category.name
from film, film_category, category
where film.film_id=film_category.film_id and film_category.category_id=category.category_id
group by category.name;

select min(film.length), max(film.length), avg(film.length), category.name
from film, film_category, category
where film.film_id=film_category.film_id and film_category.category_id=category.category_id
group by category.name;

select customer.first_name, customer.last_name
from customer, rental, inventory, film, film_category, category
where customer.customer_id=rental.customer_id and rental.inventory_id=inventory.inventory_id and 
inventory.film_id=film.film_id and film.film_id=film_category.film_id and film_category.category_id=category.category_id and 
category.name="Action" and category.name!="Comedy" or "Classic"
group by customer.customer_id;

select actor.first_name, actor.last_name
from actor, film_actor, film, language
where actor.actor_id=film_actor.actor_id and film_actor.film_id=film.film_id and film.language_id=language.language_id and 
language.name="English"
group by actor.actor_id;

select rental.rental_id
from rental, staff, inventory, store
where rental.inventory_id=inventory.inventory_id and inventory.store_id=store.store_id and staff.store_id=store.store_id and 
rental.staff_id=staff.staff_id and staff.first_name="Mike"
group by rental.rental_id;

select actor.first_name, actor.last_name, film.film_id
from actor, film_actor, film
where actor.actor_id=film_actor.actor_id and film_actor.film_id=film.film_id
order by film.film_id, actor.first_name, actor.last_name;

