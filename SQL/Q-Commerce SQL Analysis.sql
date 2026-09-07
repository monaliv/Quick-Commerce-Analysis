--QUICK-COMMERCE COMPETITIVE ANALYSIS: Blinkit, Instamart, Zepto across five Indian cities
--Monali Kale (Author)


--Which platform shows highest number of in-stock observations in each city?

SELECT   City,
         Platform,
         Instock
FROM     (SELECT   City,
                   Platform,
                   count(STOCK_STATUS) AS InStock,
                   rank() OVER (PARTITION BY city ORDER BY count(stock_status) DESC) AS rn
          FROM     GroDataset
          WHERE    stock_status = 'in stock'
          GROUP BY City, Platform) AS tbl
WHERE    rn = 1
GROUP BY city, platform, InStock
ORDER BY InStock DESC;

--Which platform had the highest frequency of full stock availability by city?
SELECT   City,
         Platform,
         FullyStocked
FROM     (SELECT   Platform,
                   City,
                   count(*) AS FullyStocked,
                   rank() OVER (PARTITION BY city ORDER BY count(*) DESC) AS rn
          FROM     (SELECT   Platform,
                             City,
                             date,
                             COUNT(CASE WHEN STOCK_STATUS = 'IN STOCK' THEN 1 END) AS StockAvailability,
                             COUNT(Product_Name) AS TotalProducts
                    FROM     GroDataset
                    GROUP BY PLATFORM, City, Date) AS a
          WHERE    StockAvailability = 18
          GROUP BY PLATFORM, City) AS b
WHERE    rn = 1
ORDER BY FullyStocked DESC;

--What is the total number of discounts given by each platform in each city?
SELECT   Platform,
         City,
         sum(Dcount) AS TotalDiscounts
FROM     (SELECT   Platform,
                   City,
                   count(Discount) AS Dcount
          FROM     GroDataset
          WHERE    Discount NOT IN (0, 100)
                   AND Platform in ('blinkit', 'Instamart', 'Zepto')
          GROUP BY Platform, City, Discount
          HAVING   City in ('Delhi', 'Mumbai', 'pune', 'Bengaluru', 'Chennai') 
          )AS TBL
GROUP BY platform, City
ORDER BY Platform, TotalDiscounts Desc;

--What is the stock distribution in all three platforms? 

SELECT   Platform,
         Stock_Status,
         count(Stock_Status) AS Stockstatus
FROM     GroDataset
GROUP BY Platform, Stock_Status
ORDER BY Platform, Stockstatus DESC;

--What is the total number of discounts given by each platform?
SELECT   Platform,
         count(CASE WHEN Discount NOT IN (0, 100) THEN 1 END) AS TotalDiscounts,
         count(CASE WHEN Discount = 0 THEN 1 END) AS NoDiscounts
FROM     GroDataset
GROUP BY Platform
ORDER BY TotalDiscounts DESC;

--Which product type had the highest discount on each platform?
SELECT   Product_Type,
         Platform,
         discount
FROM     (SELECT Product_Type,
                 Platform,
                 discount,
                 rank() OVER (PARTITION BY platform ORDER BY discount DESC) AS rn
          FROM   GroDataset
          WHERE  Discount NOT IN (0, 100)) AS a
WHERE    rn = 1
GROUP BY Product_Type, Platform, Discount
ORDER BY Discount DESC;

--What is the Average MRP and Selling price?
SELECT   PLATFORM,
         avg(MRP) AS AvgMRP,
         avg(Selling_Price) AS AvgSP
FROM     GroDataset
GROUP BY Platform
ORDER BY AvgSP;





