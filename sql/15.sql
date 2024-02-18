/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

select c.name, count(*) as sum
from category c
join film_category fc on c.category_id = fc.category_id
join film f on fc.film_id = f.film_id
join language l on f.language_id = l.language_id
where l.name = 'English'
group by c.name;
