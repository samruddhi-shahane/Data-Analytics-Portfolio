--------------------------------------------------

**SQL Project Queries**

--------------------------------------------------

**Sales Data Analysis**

---------------------------------------------------

**1.Total sales**

SELECT sum(sales) AS Total\_Sales

FROM Sales\_data

---------------------------------------------------

**2.Top Customers**

SELECT customername,

sum(sales) as Total\_sales

from Sales\_data

GROUP by customername

order by Total\_sales DESC

Limit 5;

---------------------------------------------------

**3.Country-wise Sales**

SELECT country,

sum(sales) as Total\_Sales

from Sales\_data

group by country

order by Total\_Sales DESC;

---------------------------------------------------

**4.Monthly Sales Trend**

select month\_id,

sum(sales) as Total\_Sales

from Sales\_data

group by month\_id

order BY month\_id

--------------------------------------------------

**5.High / Medium / Low Value Orders**

select 

case 

&#x20;  when sales > 10000 then 'High Value'

&#x20;  when sales > 5000 then 'Medium Value'

&#x20;  when sales >= 1000 then 'Low Value'

&#x20;  ELSE 'Lowest value'

end as Order\_Catagory,

count(\*) as Total\_Orders,

sum(sales) as Total\_Sales

FROM Sales\_data

GROUP by Order\_Catagory;

----------------------------------------------------

**6.Customers Purchased More Than Once**

select customername, COUNT (\*) AS Number\_of\_Orders

FROM Sales\_data

group by customername

having COUNT(\*) > 1

order by Number\_of\_Orders DESC;

----------------------------------------------------

**7.Best Product Line per Country**

select productline, country, sum(sales) as Total\_Sales

from Sales\_data

group by productline, country

order by country, Total\_Sales DESC;

-----------------------------------------------------

**8.Country with Most Orders**

select country, count(\*) as Total\_Orders

from Sales\_data

GROUP by country

order by Total\_Orders DESC

limit 5;

-----------------------------------------------------

**9.Average Sales per Order**

SELECT Avg(sales)

from Sales\_data

----------------------------------------------------

**10.Month which performed best**

select

&#x20; substr(orderdate, -9, 4) || '-' ||

&#x20; printf('%02d', CAST(substr(orderdate, 1, instr(orderdate, '/') - 1) as INTIGER))

&#x20; as month,

&#x20; sum(sales) as Total\_sales

&#x20; from sales\_data

&#x20; group by month

&#x20; order by Total\_sales DESC;


----------------------------------------------------









