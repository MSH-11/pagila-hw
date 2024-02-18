/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

select f.title
from film f
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
where c.name = 'Family';
