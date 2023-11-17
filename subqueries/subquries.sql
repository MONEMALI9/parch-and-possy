/*
Lesson Overview

Up to this point, you have learned a lot about working with data using SQL. 
You’ve covered a handful of basic SQL concepts, including aggregate functions 
and joins. In this lesson, we’ll cover subqueries, a fundamental advanced SQL topic.

This lesson will focus on the following components of subqueries, and you will be able to:

	Create subqueries to solve real-world problems
	Differentiate between Subqueries and Joins
	Implement the best type of Subqueries
	Consider the tradeoffs to using subqueries
	Implement the best subquery strategy
	
	Sometimes, the question you are trying to answer can’t be solved with the set of tables in your database. 
	Instead, there’s a need to manipulate existing tables and join them to solve the problem at hand.

This is where subqueries come to the rescue!

If you can’t think of a situation where this need exists,don’t worry.
We’ll review a few real-world applications where existing tables need to be manipulated and joined. 
And how subqueries help us get there.
*/


-- What exactly is a subquery?
	-- A subquery is a query within a query.
	
SELECT product_id , name , price
	FROM db.product
	Where price > (SELECT AVG(price)
					FROM db.product);
					
/*
	When do you need to use a subquery?
		You need to use a subquery when you have the need to manipulate an existing table to 
		“pseudo-create” a table that is then used as a part of a larger query. 
		In the examples below, existing tables cannot be joined together to solve 
		the problem at hand. Instead, an existing table needs to be manipulated, massaged, or 
		aggregated in some way to then join to another table in the dataset to answer the posed question.

	Set of Problems:

		Identify the top-selling Amazon products in months where sales have exceeded $1m
			Existing Table: Amazon daily sales
			Subquery Aggregation: Daily to Monthly
		
		Examine the average price of a brand’s products for the highest-grossing brands
			Existing Table: Product pricing data across all retailers
			Subquery Aggregation: Individual to Average
			
		Order the annual salary of employees that are working less than 150 hours a month
			Existing Table: Daily time-table of employees
			Subquery Aggregation: Daily to Monthly
*/







