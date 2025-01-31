-- Advance Questions : 
-- 1) Retrieve the total number of books sold for each genre:
select * from book;
select * from orders;
select b.Genre, sum(o.quantity) as Order_quantity
from orders o 
join book b on b.Book_ID = o.Book_ID
group by b.Genre;
-- 2) Find the average price of books in the "Fantasy" genre:
select avg(Price) from book
where Genre = "Fantasy";
-- 3) List customers who have placed at least 2 orders:
select o.Customer_ID,c.Name, count(o.order_id) as Order_count
from orders o 
join customer c  on  o.Customer_ID = c.Customer_ID
group by o.Customer_ID , c.Name
having  Order_count >= 2;
-- 4) Find the most frequently ordered book:
SELECT o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
FROM orders o
JOIN book b ON o.book_id=b.book_id
GROUP BY o.book_id, b.title
ORDER BY ORDER_COUNT DESC LIMIT 1;
-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT * FROM book
WHERE genre ='Fantasy'
ORDER BY price DESC LIMIT 3;
-- 6) Retrieve the total quantity of books sold by each author:
select author, sum(quantity) as Total_Books_Sold
from orders
join book on book.Book_ID = orders.Book_ID
group by Author;
-- 7) List the cities where customers who spent over $30 are located:
select distinct city , total_amount 
from orders
join customer on customer.Customer_ID = orders.Order_ID
where  Total_Amount > 30;
-- 8) Find the customer who spent the most on orders:
SELECT c.customer_id,c.Email, c.name, SUM(o.total_amount) AS Total_Spent
FROM orders o
JOIN customer c ON o.customer_id=c.customer_id
GROUP BY c.customer_id, c.name, c.Email
ORDER BY Total_spent Desc LIMIT 1;






















