/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */
CREATE OR REPLACE FUNCTION category_counts_by_language(TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$

select c.name, count(f.title)
from category c
join film_category fc on c.category_id = fc.category_id
join film f on fc.film_id = f.film_id
join language l on f.language_id = l.language_id
where l.name = $1
group by c.name
order by c.name;

$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');
