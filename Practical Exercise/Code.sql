SELECT * FROM `bigquery-practical-493417.retail_sales.data` LIMIT 100;

---Question 1---

Select *

FROM `bigquery-practical-493417.retail_sales.data` 

WHERE DATE >= '2023-01-01'AND DATE < '2024-01-01';

 

---Question2---

 SELECT AVG(`Total Amount`) AS Average_total_amount

 FROM `bigquery-practical-493417.retail_sales.data` ;

 

SELECT *

FROM `bigquery-practical-493417.retail_sales.data` 

 WHERE`Total Amount` > 456;

 

 ---Question 3---

 SELECT SUM(`Total Amount`) AS Total_revenue

 FROM `bigquery-practical-493417.retail_sales.data` ;

 

  ---Question 4---

  SELECT DISTINCT (`Product Category`)

FROM `bigquery-practical-493417.retail_sales.data` 


---Question 5---

 SELECT (`Product Category`),

     SUM(`Quantity`) AS Total_quantity   

 FROM `bigquery-practical-493417.retail_sales.data`
 GROUP BY (`Product Category`);

 ---Question 6---
 SELECT `Customer ID`,
        Age,
 CASE 
   WHEN AGE <30 THEN 'YOUTH'
   WHEN AGE BETWEEN 30 AND 35 THEN 'ADULT'
   ELSE 'SENIOR'
   END AS AGE_GROUP
  FROM `bigquery-practical-493417.retail_sales.data`;

  ---Question 7---

  SELECT Gender,
   COUNT (*) AS High_Value_Revenue
  FROM `bigquery-practical-493417.retail_sales.data`
  WHERE `Total Amount` > 500
  GROUP BY Gender;
