select count(t.dateFlight) as 'Total Flights', t.buyingDate as 'Buying Ticket Date', cl.nameClient as 'Name Client', 
cl.surnameClient as 'Surname Client', cl.milesFlight as 'Miles Flight', cl.birthdayDate as 'Birthday' 
from tickets as t
inner join clients as cl
on t.client = cl.Id
group by client
order by count(dateFlight) desc limit 3;