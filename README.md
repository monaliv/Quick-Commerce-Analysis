# Quick-Commerce Analysis
### A Quick-Commerce Competitive Analysis of Blinkit, Instamart, and Zepto across five Indian cities.

## Objective

Narangikart is a hypothetical new Q-commerce enterprise seeking to strategically establish its presence in five major Indian cities: Delhi, Mumbai, Pune, Bengaluru, and Chennai. The platform aims to assess the performance of three competitors — Blinkit, Instamart, and Zepto — based on stock availability, discounts, and price analysis across these five cities.

## Business Questions
1. What is the stock distribution across all three platforms?
2. How many observations are discounted on each platform?
3. What is the total number of discounted observations for each platform in each city?
4. What is the maximum percentage of discount offered by each platform?
5. Which product type had the highest maximum discount on each platform?
6. What are the average MRP and selling prices?
7. How do discounts, stock availability, and MRP/selling price vary across cities?
8. Which platform shows the highest stock availability in each city?
9. Which platform had the highest frequency of full stock availability by city?

## Project Workflow and Tools Used

Data Collection (Excel) → Data Cleaning & ETL (Excel, Power Query) → SQL Analysis (Microsoft SQL Server) → Data Visualization (Microsoft Power BI) → Reporting (Microsoft Word)

## Skills Demonstrated

Data Collection & Research, Excel, Data Cleaning, Power Query ETL, SQL, Data Analysis, Data Visualization, Business Storytelling

## Data Structure and Limitations

### a) Data Collection

For this study, data from the three platforms across the five cities were manually collected over seven days.

The data collection process involved creating a table with 11 columns:

**Date, City, Platform, Category, Product Type, Product Name, Pack Size, MRP (Maximum Retail Price), Selling Price, Discount, and Stock Status.**

Three separate Excel workbooks were created, one for each platform, with five sheets representing the five cities. Each sheet contained a total of 18 representative products from 9 categories. Pack size and product name were kept consistent.

**Raw Data:**
<img width="979" height="470" alt="image" src="https://github.com/user-attachments/assets/ea07916a-a042-4046-a9eb-1da1cd7cb396" />

**Limitations**

- This project study is based only on a seven-day observation of three platforms, 18 products, and selected areas within five cities.
- Prices and availability were observed at specific collection times to minimize possible inaccuracies.
- Product availability and prices may change throughout the day.
- Since the data was collected manually, there is a possibility of minor recording errors.
- The analysis is based on observed patterns and does not explain the reasons behind those patterns.
- Findings may not generalize to all products, all Indian cities, or all areas of the cities considered in this study.

### b) Data Cleaning

**Tool used:** Excel, Power Query.

This step involved:

* Removing null values
* Checking and correcting spelling inconsistencies
* Correcting stock status inconsistencies
* Appending sheets and data from three workbooks
* Adding an ID column

### c) Master Dataset

The Master Dataset was converted to CSV format for further analysis and visualization.

**Master Dataset:**
<img width="979" height="447" alt="image" src="https://github.com/user-attachments/assets/12f2abfc-9fdf-4aa0-9979-ca3b501f7b89" />


**Dataset Summary:**
#### Table: Dataset Summary
| Dimension | Scope |
|---|---|
| Platforms | Blinkit, Instamart, Zepto |
| Cities | Delhi, Mumbai, Pune, Bengaluru, Chennai |
| Products | 18 |
| Categories | 9 |
| Observation period | 7 days |
| Total observations | 1,890 |

#### Table: Cities and Areas Covered
| Cities | Areas |
|---|---|
| Delhi | Lajpat Nagar |
| Mumbai | Shanti Nagar, Andheri East |
| Pune | Rajiv Gandhi Phase 1 Road, Hinjewadi |
| Bengaluru | Indiranagar |
| Chennai | T. Nagar |

#### Figure: Dataset Summary Flowchart
<img width="824" height="535" alt="image" src="https://github.com/user-attachments/assets/68ca5edd-b535-4d9c-bd30-9967612b7787" />


## Data Analysis

### a) Performance Criteria and Metrics

The three platforms were compared based on **stock availability, MRP, selling price, and the number of discounted products** to assess their performance.

#### Discount Performance

The number of observations where a product had a discount percentage between **1% and 99%**.

* **0%** represents products with no discount.
* **100%** represents products that were out of stock.

#### Stock Availability

The number of observations where a product was marked as **"In-stock"** and **"Out of stock."**

#### Pricing

Comparison of **MRP and selling price (₹)** across platforms and cities.

### b) Analysis

**Tools Used:** Microsoft SQL Server and Microsoft Power BI

The study was divided into three parts:

1. **Platform Comparison Within Each City**
2. **Overall Platform Performance**
3. **Price Analysis**

The price analysis involved examining MRP discrepancies across cities and platforms for products with the same brand, product name, and pack size. The average MRP and selling price across the three platforms were also compared.

**Power BI Dashboard:**

<img width="981" height="1036" alt="image" src="https://github.com/user-attachments/assets/4eda15dd-0f90-4d64-b140-a2e4f6f77cad" />

## c) Key Findings

* **Zepto had the highest stock availability:** 603 of 630 observations were in-stock (**96%**), including being fully stocked on all seven days in Bengaluru. Mumbai was Zepto's weakest city.

* **Zepto gave the most discounts:** 474 of its 603 in-stock observations were discounted, the highest of the three platforms. Rice and Wheat Flour reached the highest maximum discount on Zepto, at **33%**.

* **Blinkit and Instamart performed similarly overall:** Blinkit had slightly more total discounts (**323**) and a higher maximum discount (**29%**) despite fewer in-stock observations (**570**) than Instamart (**578**).

* **City-Level Comparison: Zepto had the highest number of discounted observations in every city.** Stock availability was more mixed: Zepto had the highest number of in-stock observations in Bengaluru and Delhi, Instamart had the highest in Chennai and Pune, and Blinkit had the highest in Mumbai.

| City      | Most In-Stock Observations | Most Discounted Observations |
| --------- | -------------------------- | ---------------------------- |
| Bengaluru | Zepto                      | Zepto                        |
| Delhi     | Zepto                      | Zepto                        |
| Chennai   | Instamart                  | Zepto                        |
| Pune      | Instamart                  | Zepto                        |
| Mumbai    | Blinkit                    | Zepto                        |

* **Average MRP was approximately ₹183 across the three platforms, while Zepto had the lowest average selling price.**

* **Identical products showed variations in MRPs across cities and platforms in 5 of 9 categories.** Wheat Flour had the widest range (**₹107**), while Antiseptic Liquid varied by just **₹0.19**.

## Recommendations
- **Maintaining Product Availability**: Prioritize inventory management for high-demand products and minimize stockouts.
- **Adopting City-Specific Discount Strategies**: Use competitive, location-based discounting while balancing customer attraction with profitability.
- **Expansion Into Unserved Areas**: Explore delivery expansion in areas where competitors have limited or no observed availability.
- **Strategic Warehouse Locations**: Additional operational considerations include selecting between multiple mini-warehouses or strategically located larger facilities based on demand, order volume, delivery distance, space, and operating costs.
- **Customer & Delivery Operations**: Another operational consideration includes providing reliable customer service, easy returns, flexible delivery options, and clear delivery-partner policies covering safety, professionalism, and working conditions.
