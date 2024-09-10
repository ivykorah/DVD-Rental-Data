-- How many payment transactions were greater than $5.00?
select count(amount) from payment
where amount > 5 ;


--How many actors have a first name that starts with the letter P?
select count(first_name) from actor
where first_name like 'P%';


--How many unique districts are our customers from?
select count(distinct district) from address;


--Retrieve the list of names for those distinct districts from the previous question.
select distinct district from address;


--How many films have the word Truman somewhere in the title?
select count(title) from film
where title like '%Truman%';


--Create a table to organize our potential leads! 
--We will have the following information: A customer's first name, last name, email, sign-up date, and the number of minutes spent on the DVD rental site. 
--You should also have some sort of id tracker for them. You have free reign on how you want to create this table.
CREATE TABLE Potential_Leads;(
    ID INT Primary Key,
    First_Name Varchar(15) Not Null, 
	Last_Name Varchar(15) Not Null,
	Email Varchar(40) Unique,
	Signup_date Date Not Null,
	Time_spent Timestamp Not Null
);

--Checking that my table was created
select * from Potential_Leads;
    

--What customer has the highest customer ID number whose name starts with an ‘E’ and has an address ID lower than 500?
--I used Last name
select * from customer
where last_name like 'E%' and address_id < 500
Order by customer_id desc;


--Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.
select customer_id, sum(amount) from payment
where staff_id = 2
GROUP BY CUSTOMER_ID
Having sum(amount) >= 110;

--How many films have a rating of R and a replacement cost between $5 and $15?
select count(*) from film                      -- to show the count only
where rating = 'R' and replacement_cost between 5 and 15;

select * from film                      -- to show all the 52 movies
where rating = 'R' and replacement_cost between 5 and 15;


--What is the maximum payment transaction done by the customer?
select max(amount) from payment;
