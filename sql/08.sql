/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */

select s.first_name, s.last_name, a.address as street_address
from staff s
join address a on s.address_id = a.address_id
order by s.last_name;
