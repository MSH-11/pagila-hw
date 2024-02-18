/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

select c.country, sum(p.amount) as profit
from country c
join city ct on c.country_id = ct.country_id
join address a on ct.city_id = a.city_id
join customer cr on cr.address_id = a.address_id
join rental r on cr.customer_id = r.customer_id
join payment p on r.rental_id = p.rental_id
group by c.country
order by c.country;
