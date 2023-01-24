select t.flightId, t.dateFlight as 'Date Flight', t.place, t.buyingDate as 'Buying Date', cl.nameClient as 'Name Client', 
cl.surnameClient as 'Surname Client', cl.milesFlight as 'Miles Flight', cl.birthdayDate as 'Birthday' 
from tickets as t
inner join clients as cl
on t.client = cl.Id;