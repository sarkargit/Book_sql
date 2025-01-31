-- 1) Retrieve all books in the "Fiction" genre:
select * from book where Genre = "Fiction";
-- 2) Find books published after the year 1950:
select * from book where Published_Year > 1950;
-- 3) List all customers from the Canada:
SELECT * FROM Customer
WHERE country='Canada';
-- 4) Show orders placed in November 2023:
select * from orders where Order_Date between '2023-11-01'
and '2023-11-30';
-- 5) Retrieve the total stock of books available:
select sum(stock) as Total_stocks  from book ;
-- 6) Find the details of the most expensive book:
select * from book
order by Price desc limit 1;
-- 7) Show all customers who ordered more than 1 quantity of a book:
select * from orders where Quantity > 1;
-- 8) Retrieve all orders where the total amount exceeds $20:
select * from orders where Total_Amount > 20;
-- 9) List all genres available in the Books table:
select distinct Genre from book ;
-- 10) Find the book with the lowest stock:
select Book_ID,Title,Stock from book
order by stock desc limit 10;
-- 11) Calculate the total revenue generated from all orders:
select sum(Total_Amount)  as Revenue  from orders ;





