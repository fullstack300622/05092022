SELECT * FROM
employees inner JOIN offices 
ON offices.officeCode = employees.officeCode;


SELECT * FROM
customers left JOIN payments
ON customers.customerNumber = payments.customerNumber;


select c.customerNumber, c.contactFirstName, c.contactLastName , p.checkNumber, p.paymentDate, p.amount FROM
customers as c inner join payments as p
on p.customerNumber=c.customerNumber;


select c.customerNumber, c.contactFirstName, c.contactLastName, sum(amount) FROM
customers as c inner join payments as p
on p.customerNumber=c.customerNumber 
group by c.customerNumber
order by contactFirstName;


SELECT sum(customerNumber), country FROM classicmodels.customers group by country;
