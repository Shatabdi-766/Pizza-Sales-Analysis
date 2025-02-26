# Sales Data Analysis: Pizza Sales
The "Pizza Sales Analysis" project focuses on analyzing pizza sales data to uncover actionable insights and optimize business strategies. Using SQL for efficient data querying and manipulation, it handles large datasets and performs complex calculations. This repository provides a comprehensive toolkit for deriving meaningful patterns and trends to drive decision-making.

## Key Features

### Data Preprocessing
- Clean and prepare sales data for analysis, ensuring **accuracy** and **consistency**.

### Sales Performance Metrics
- Calculate key metrics such as:
  - **Total Revenue**
  - **Average Order Value**
  - **Sales Trends Over Time**

### Product Analysis
- Identify **best-selling pizzas**.
- Analyze sales by category (e.g., vegetarian, non-vegetarian).
- Evaluate performance by **pizza size**.

### Customer Insights
- Analyze customer behavior, including:
  - **Peak Ordering Times**
  - **Popular Combinations**
  - **Repeat Purchase Patterns**

### Actionable Insights
- Provide recommendations to optimize:
  - **Menu Offerings**
  - **Pricing Strategies**
  - **Promotional Campaigns**

## Technologies Used
- **SQL**
- **MySQL**

## Dataset
The dataset used in this project is available in a **CSV File**. You can download it [here](./pizza_sales.zip).

## Dataset Overfiew :

The dataset for this pizza sales analysis project consists of multiple files, each containing specific information related to pizza sales. Below is a detailed breakdown of the files and their respective columns:

---

## 1. `orders.csv`
This file contains information about customer orders.

### Columns:
- **order_id:** Unique identifier for each order.
- **date:** The date on which the order was placed.
- **time:** The time at which the order was placed.

---

## 2. `order_details.csv`
This file provides details about the items included in each order.

### Columns:
- **order_details_id:** Unique identifier for each order detail entry.
- **order_id:** Links to the `orders.csv` file to identify which order the details belong to.
- **pizza_id:** Links to the `pizzas.csv` file to identify the specific pizza ordered.
- **quantity:** The number of units of the pizza ordered.

---

## 3. `pizza_types.csv`
This file contains information about the types of pizzas available.

### Columns:
- **pizza_type_id:** Unique identifier for each pizza type.
- **name:** The name of the pizza type.
- **category:** The category to which the pizza belongs (e.g., Vegetarian, Non-Vegetarian).
- **ingredients:** A list of ingredients used in the pizza.

---

## 4. `pizzas.csv`
This file provides details about the specific pizzas, including their sizes and prices.

### Columns:
- **pizza_id:** Unique identifier for each pizza.
- **pizza_type_id:** Links to the `pizza_types.csv` file to identify the type of pizza.
- **size:** The size of the pizza (e.g., Small, Medium, Large).
- **price:** The price of the pizza.

---

## Database Setup :
```sql
CREATE DATABASE PIZZASALES;
```
## Table Schema :
```sql
CREATE TABLE ORDERS(
OREDER_ID INT PRIMARY KEY NOT NULL,
ORDER_DATE DATE NOT NULL,
ORDER_TIME TIME NOT NULL

);

CREATE TABLE ORDER_DETAILS(
ORDER_DETAILS_ID INT PRIMARY KEY NOT NULL,
OREDER_ID INT  NOT NULL,
PIZZA_ID TEXT NOT NULL,
QUANTITY INT  NOT NULL

);

ALTER TABLE orders
RENAME column OREDER_ID TO ORDER_ID;

ALTER TABLE order_DETAILS
RENAME column OREDER_ID TO ORDER_ID;
```
- **The dataset has been imported using the Import Wizard for CSV files [here](./pizza_sales.zip), and a Python code file
[here](./https://github.com/Shatabdi-766/Pizza-Sales-Analysis/blob/3771779ac8dbaaed78469b146302e8d96d456740/Pizza_Sales_Analysis%20data%20files%20sql%20%2Bpython%20connector.ipynb) has also been prepared for interactive analysis.**

## Data Exploration :
```sql
SELECT * FROM ORDERS;
```
--Output--
`orders.csv`
Below is a sample of the `orders.csv` file, which contains information about customer orders:

| order_id | date      | time      |
|----------|-----------|-----------|
| 1        | 1/1/2015  | 11:38:36  |
| 2        | 1/1/2015  | 11:57:40  |
| 3        | 1/1/2015  | 12:12:28  |
| 4        | 1/1/2015  | 12:16:31  |
| 5        | 1/1/2015  | 12:21:30  |

---

## Description of Columns
- **order_id:** Unique identifier for each order.
- **date:** The date on which the order was placed (format: `MM/DD/YYYY`).
- **time:** The time at which the order was placed (format: `HH:MM:SS`).

---
## Insights
- The sample shows orders placed on **January 1, 2015**, between **11:38 AM** and **12:21 PM**.
- This data can be used to analyze:
  - **Peak ordering times.**
  - **Daily order trends.**
  - **Customer behavior patterns.**

---

```sql
SELECT * FROM ORDER_DETAILS;
```
--Output--
`order_details.csv`

Below is a sample of the `order_details.csv` file, which provides details about the items included in each order:

| order_details_id | order_id | pizza_id        | quantity |
|------------------|----------|-----------------|----------|
| 1                | 1        | hawaiian_m      | 1        |
| 2                | 2        | classic_dlx_m   | 1        |
| 3                | 2        | five_cheese_l   | 1        |
| 4                | 2        | ital_supr_l     | 1        |

---

## Description of Columns
- **order_details_id:** Unique identifier for each order detail entry.
- **order_id:** Links to the `orders.csv` file to identify which order the details belong to.
- **pizza_id:** Links to the `pizzas.csv` file to identify the specific pizza ordered.
- **quantity:** The number of units of the pizza ordered.

---

## Insights
- The sample shows details for two orders:
  - **Order 1:** Includes 1 unit of `hawaiian_m` pizza.
  - **Order 2:** Includes 1 unit each of `classic_dlx_m`, `five_cheese_l`, and `ital_supr_l` pizzas.
---

```sql
SELECT * FROM pizzas;
```
--Output--
`pizzas.csv`

Below is a sample of the `pizzas.csv` file, which provides details about the specific pizzas, including their sizes and prices:

| pizza_id   | pizza_type_id | size | price |
|------------|---------------|------|-------|
| bbq_ckn_s  | bbq_ckn       | S    | 12.75 |
| bbq_ckn_m  | bbq_ckn       | M    | 16.75 |
| bbq_ckn_l  | bbq_ckn       | L    | 20.75 |
| cali_ckn_s | cali_ckn      | S    | 12.75 |
| cali_ckn_m | cali_ckn      | M    | 16.75 |
| cali_ckn_l | cali_ckn      | L    | 20.75 |

---

## Description of Columns
- **pizza_id:** Unique identifier for each pizza.
- **pizza_type_id:** Links to the `pizza_types.csv` file to identify the type of pizza.
- **size:** The size of the pizza (e.g., Small (S), Medium (M), Large (L)).
- **price:** The price of the pizza.

---

## Insights from Sample Data
- The sample shows pizzas of different sizes and prices for two types:
  - **BBQ Chicken (`bbq_ckn`):** Available in Small, Medium, and Large sizes with prices ranging from $12.75 to $20.75.
  - **California Chicken (`cali_ckn`):** Available in Small, Medium, and Large sizes with prices ranging from $12.75 to $20.75.
- This data can be used to analyze:
  - **Price distribution by size.**
  - **Revenue contribution by pizza type.**
  - **Popular pizza sizes.**

---

```sql
select * from pizza_types;
```
--Output--
`pizza_types.csv`

Below is a sample of the `pizza_types.csv` file, which contains information about the types of pizzas available:

| pizza_type_id | name                          | category | ingredients                                                                                   |
|---------------|-------------------------------|----------|-----------------------------------------------------------------------------------------------|
| bbq_ckn       | The Barbecue Chicken Pizza    | Chicken  | Barbecued Chicken, Red Peppers, Green Peppers, Tomatoes, Red Onions, Barbecue Sauce           |
| cali_ckn      | The California Chicken Pizza  | Chicken  | Chicken, Artichoke, Spinach, Garlic, Jalapeno Peppers, Fontina Cheese, Gouda Cheese           |
| ckn_alfredo   | The Chicken Alfredo Pizza     | Chicken  | Chicken, Red Onions, Red Peppers, Mushrooms, Asiago Cheese, Alfredo Sauce                     |
| ckn_pesto     | The Chicken Pesto Pizza       | Chicken  | Chicken, Tomatoes, Red Peppers, Spinach, Garlic, Pesto Sauce                                   |
| southw_ckn    | The Southwest Chicken Pizza   | Chicken  | Chicken, Tomatoes, Red Peppers, Red Onions, Jalapeno Peppers, Corn, Cilantro, Chipotle Sauce   |

---

## Description of Columns
- **pizza_type_id:** Unique identifier for each pizza type.
- **name:** The name of the pizza type.
- **category:** The category to which the pizza belongs (e.g., Chicken).
- **ingredients:** A list of ingredients used in the pizza.

---

## Insights from Sample Data
- The sample shows **Chicken** category pizzas with unique names and ingredient combinations.
- Examples include:
  - **The Barbecue Chicken Pizza:** Features barbecued chicken, peppers, onions, and barbecue sauce.
  - **The California Chicken Pizza:** Includes chicken, artichoke, spinach, and a blend of cheeses.
  - **The Southwest Chicken Pizza:** Combines chicken, jalapenos, corn, and chipotle sauce for a spicy flavor.
- This data can be used to analyze:
  - **Popular pizza categories.**
  - **Ingredient preferences.**
  - **Menu optimization based on customer preferences.**

---

# Analysis :
## The total revenue generated from pizza sales :
```sql
SELECT 
    ROUND(SUM((QUANTITY * PRICE)), 2) AS TOTAL_REVENUE
FROM
    order_details O
        INNER JOIN
    pizzas P ON O.PIZZA_ID = P.pizza_id;
```
--Output--
| TOTAL_REVENUE |
|---------------|
| 817860.05     |

- The total revenue generated from pizza sales is **$817,860.05**.

## Identify the highest-priced pizza :
```sql
SELECT 
    PI.price, PT.NAME
FROM
    pizzas PI
        INNER JOIN
    pizza_types PT ON PI.pizza_type_id = PT.pizza_type_id
ORDER BY 1 DESC
LIMIT 1;
```
--Output--
| price  | NAME            |
|--------|-----------------|
| 35.95  | The Greek Pizza |

- The **highest-priced pizza** in the dataset is:
- **Name:** The Greek Pizza
- **Price:** $35.95
- The Greek Pizza is priced significantly higher than other pizzas in the dataset.
- This could indicate:
  - A **premium offering** with unique or high-quality ingredients.
  - A **niche product** targeting specific customer segments.
 
## Identify the most common pizza size ordered:
```sql
SELECT 
    PI.SIZE, COUNT(order_details_ID) AS MOST_COMMON_PIZZA_SIZE
FROM
    ORDER_DETAILS OD
        INNER JOIN
    PIZZAS PI ON OD.PIZZA_ID = PI.PIZZA_ID
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;
```
--Output--
| SIZE | MOST_COMMON_PIZZA_SIZE |
|------|-------------------------|
| L    | 18526                   |

- The **most common pizza size** ordered is:

- **Size:** Large (L)
- **Number of Orders:** 18,526

---

## Interpretation
- The **Large (L)** size is the most popular among customers, indicating a preference for bigger portions.
- This could be due to:
  - **Value for money:** Customers perceive larger sizes as more cost-effective.
  - **Sharing:** Large pizzas are often ordered for group meals or gatherings.
  - **Menu positioning:** Large pizzas might be prominently featured or promoted.

---

## Actionable Insight
- **Promote Large Pizzas:**
  - Highlight the value and benefits of large pizzas in marketing campaigns.
  - Offer discounts or combo deals for large-sized orders.
- **Optimize Inventory:**
  - Ensure sufficient stock of ingredients for large pizzas to meet demand.
- **Upsell Opportunities:**
  - Encourage customers to upgrade to large sizes by emphasizing the added value.
- **Menu Engineering:**
  - Analyze if the popularity of large pizzas is consistent across all pizza types or specific categories (e.g., vegetarian, non-vegetarian).

## List the top 5 most ordered pizza types along with their quantities :
```sql
SELECT 
    PT.NAME, SUM(OD.QUANTITY) AS MOST_ORDERED
FROM
    pizza_types PT
        INNER JOIN
    pizzas PI ON PT.pizza_type_id = PI.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;
```
--Output--
| NAME                      | MOST_ORDERED |
|---------------------------|--------------|
| The Classic Deluxe Pizza  | 2453         |
| The Barbecue Chicken Pizza| 2432         |
| The Hawaiian Pizza        | 2422         |
| The Pepperoni Pizza       | 2418         |
| The Thai Chicken Pizza    | 2371         |

## Interpretation
- These pizza types are the **most popular** among customers, with order quantities ranging from **2,371 to 2,453**.
- The **Classic Deluxe Pizza** is the most ordered, followed closely by the **Barbecue Chicken Pizza** and **Hawaiian Pizza**.
- This indicates strong customer preference for these flavors and combinations.

---

## Actionable Insight
- **Promote Top Performers:**
  - Highlight these pizzas in marketing campaigns and menu displays.
  - Offer limited-time discounts or bundles to further boost sales.
- **Analyze Ingredients:**
  - Identify common ingredients or flavors that make these pizzas popular.
  - Use this information to develop new menu items or improve less popular pizzas.
- **Customer Feedback:**
  - Gather feedback from customers to understand why these pizzas are preferred.
  - Use insights to refine recipes or introduce variations.
- **Inventory Management:**
  - Ensure sufficient stock of ingredients for these top-performing pizzas to meet demand.

## Retrieve the total number of orders placed :
```sql
SELECT COUNT(ORDER_ID) AS TOTAL_ORDERS
FROM ORDERS;
```
--Output--
| TOTAL_ORDERS |
|--------------|
| 21350        |

- The **total number of orders** placed is **21,350**.

---

## Interpretation
- This metric represents the **total volume of orders** across all pizza types, sizes, and time periods.
- It provides a high-level overview of customer demand and business activity.

---

## Actionable Insight
- **Demand Analysis:**
  - Use this figure to assess overall customer demand and identify trends over time (e.g., monthly, quarterly, or yearly).
- **Operational Efficiency:**
  - Evaluate if the current operational setup (e.g., staff, kitchen capacity) can handle the order volume efficiently.
  - Identify peak ordering times and plan resources accordingly.
- **Customer Engagement:**
  - Analyze repeat orders to identify loyal customers and reward them with loyalty programs or discounts.
  - Use the total order count as a baseline to set future sales targets.
- **Marketing Impact:**
  - Measure the effectiveness of marketing campaigns by tracking changes in order volume over time.
 
## Determine the top 3 most ordered pizza types based on revenue :
```sql
SELECT 
    PT.NAME, ROUND(SUM((PI.PRICE * OD.QUANTITY)), 0) AS REVENUE
FROM
    pizza_types PT
        INNER JOIN
    pizzas PI ON PT.pizza_type_id = PI.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;
```
--Output--
| NAME                      | REVENUE |
|---------------------------|---------|
| The Thai Chicken Pizza    | 43434   |
| The Barbecue Chicken Pizza| 42768   |
| The California Chicken Pizza| 41410  |

---

## Interpretation
- These three pizzas generate the **highest revenue**, with **The Thai Chicken Pizza** leading at **$43,434**.
- This indicates that these pizzas are not only popular but also priced in a way that maximizes revenue.
- The **Chicken category** dominates the top revenue-generating pizzas, suggesting strong customer preference for chicken-based pizzas.

---

## Actionable Insight
- **Promote High-Revenue Pizzas:**
  - Highlight these pizzas in marketing campaigns, menu displays, and special offers.
  - Bundle them with complementary items (e.g., drinks, desserts) to increase average order value.
- **Optimize Pricing:**
  - Analyze the pricing strategy of these pizzas to ensure they remain competitive while maximizing profitability.
  - Consider introducing premium versions or variations of these pizzas to further boost revenue.
- **Ingredient Management:**
  - Ensure sufficient stock of ingredients for these high-revenue pizzas to avoid stockouts.
- **Customer Preferences:**
  - Gather feedback to understand why these pizzas are preferred and use insights to improve other menu items.
- **Cross-Selling Opportunities:**
  - Use these pizzas as anchor items to promote other menu offerings (e.g., "Pair your Thai Chicken Pizza with a refreshing drink!").

## Join the necessary tables to find the total quantity of each pizza category ordered :
```sql
SELECT 
    PT.CATEGORY, SUM(OD.QUANTITY) AS TOTAL_QUANTITY
FROM
    pizzas PI
        INNER JOIN
    pizza_types PT ON PI.pizza_type_id = PT.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1
ORDER BY 2 DESC;
```
--Output--
| CATEGORY | TOTAL_QUANTITY |
|----------|----------------|
| Classic  | 14888          |
| Supreme  | 11987          |
| Veggie   | 11649          |
| Chicken  | 11050          |

---

## Interpretation
- The **Classic** category has the **highest sales volume**, with **14,888** units sold.
- This is followed by the **Supreme**, **Veggie**, and **Chicken** categories.
- The data suggests that **traditional flavors (Classic)** are the most popular, while **Chicken** pizzas, despite being a strong category, have slightly lower sales volume.

---

## Actionable Insight
- **Focus on Classic Pizzas:**
  - Highlight Classic pizzas in marketing campaigns and menu displays.
  - Introduce new variations or limited-time offers to maintain customer interest.
- **Promote Underperforming Categories:**
  - For categories like **Chicken**, consider offering discounts, bundles, or promotions to boost sales.
  - Analyze customer feedback to identify potential improvements in recipes or marketing.
- **Menu Optimization:**
  - Use sales data to balance the menu, ensuring popular categories are well-stocked while experimenting with new offerings in less popular categories.
- **Targeted Marketing:**
  - Tailor marketing strategies to highlight the unique selling points of each category (e.g., health benefits of Veggie pizzas, premium ingredients in Supreme pizzas).
- **Seasonal Campaigns:**
  - Introduce seasonal or themed pizzas in lower-performing categories to attract customer interest.

## Determine the distribution of orders by hour of the day :
```sql
SELECT 
    HOUR(TIME) AS HOUR, COUNT(ORDER_ID) AS TOTAL_ORDER
FROM
    ORDERS
GROUP BY 1
ORDER BY 2 DESC;
```
--Output--
| HOUR | TOTAL_ORDER |
|------|-------------|
| 12   | 2520        |
| 13   | 2455        |
| 18   | 2399        |
| 17   | 2336        |
| 19   | 2009        |
| 16   | 1920        |
| 20   | 1642        |
| 14   | 1472        |
| 15   | 1468        |
| 11   | 1231        |
| 21   | 1198        |
| 22   | 663         |
| 23   | 28          |
| 10   | 8           |
| 9    | 1           |

---

## Interpretation
- **Peak Ordering Hours:**
  - The busiest hours are **12 PM (noon)** and **1 PM**, with **2,520** and **2,455** orders respectively.
  - Another peak occurs in the evening, particularly at **6 PM (18)** and **5 PM (17)**, with **2,399** and **2,336** orders.
- **Lowest Ordering Hours:**
  - Orders drop significantly after **10 PM (22)**, with only **663** orders at **10 PM** and **28** orders at **11 PM (23)**.
  - Early morning hours (e.g., **9 AM**, **10 AM**) have minimal orders.

---

## Actionable Insight
- **Staffing and Operations:**
  - Schedule more staff during peak hours (**12 PM–1 PM** and **5 PM–7 PM**) to handle the high order volume efficiently.
  - Optimize kitchen operations to reduce wait times during busy periods.
- **Marketing Campaigns:**
  - Run targeted promotions during off-peak hours (e.g., **9 AM–11 AM** and **10 PM–11 PM**) to boost sales.
  - Offer discounts or special deals for early lunch (e.g., **11 AM**) or late dinner (e.g., **9 PM–10 PM**).
- **Menu Adjustments:**
  - Highlight quick-to-prepare items during peak hours to speed up service.
  - Introduce breakfast or late-night menus to attract customers during low-order hours.
- **Customer Engagement:**
  - Use loyalty programs or incentives to encourage repeat orders during off-peak times.
- **Data-Driven Decisions:**
  - Continuously monitor hourly order trends to adjust strategies and improve overall efficiency.

## Group the orders by date and calculate the average number of pizzas ordered per day :
```sql
SELECT 
    ROUND(AVG(TOTAL_QUANTITY), 0) AS average_number_of_pizzas_per_day
FROM
    (SELECT 
        OO.ORDER_DATE, SUM(OD.QUANTITY) AS TOTAL_QUANTITY
    FROM
        orders OO
    INNER JOIN order_details OD ON OO.ORDER_ID = OD.ORDER_ID
    GROUP BY 1) AS ORDER_QUANTITY;
```
--Output--
| average_number_of_pizzas_per_day |
|----------------------------------|
| 138                              |

The **average number of pizzas sold per day** is **138**.

---

## Interpretation
- This metric represents the **daily average sales volume** across all pizza types and sizes.
- It provides a baseline for understanding daily customer demand and business performance.

---

## Actionable Insight
- **Demand Forecasting:**
  - Use this average to forecast inventory needs and plan ingredient orders.
  - Identify days with significantly higher or lower sales to understand trends (e.g., weekends vs. weekdays).
- **Performance Benchmarking:**
  - Compare daily sales against this average to assess performance and identify outliers.
  - Set daily sales targets based on this benchmark.
- **Marketing Strategies:**
  - Run promotions or discounts on days with consistently lower sales to boost demand.
  - Highlight peak days (e.g., weekends) with special offers to maximize revenue.
- **Operational Efficiency:**
  - Ensure staffing and kitchen capacity align with the average daily demand to maintain service quality.
  - Optimize workflows to handle fluctuations around the average.
- **Customer Engagement:**
  - Analyze customer behavior on days with higher or lower sales to tailor marketing efforts.
  - Use loyalty programs or incentives to encourage consistent daily orders.


## Join relevant tables to find the category-wise distribution of pizzas :
```sql
SELECT 
    CATEGORY, COUNT(NAME) AS NAME_COUNT
FROM
    pizza_types
GROUP BY 1
ORDER BY 2 DESC;
```
--Output--
| CATEGORY | NAME_COUNT |
|----------|------------|
| Supreme  | 9          |
| Veggie   | 9          |
| Classic  | 8          |
| Chicken  | 6          |

---

## Interpretation
- The **Supreme** and **Veggie** categories have the **most variants**, with **9** unique pizzas each.
- The **Classic** category has **8** variants, while the **Chicken** category has the fewest, with **6** variants.
- This indicates a diverse menu for **Supreme** and **Veggie** pizzas, while the **Chicken** category may have room for expansion.

---

## Actionable Insight
- **Menu Expansion:**
  - Consider adding more variants to the **Chicken** category to attract a wider audience.
  - Experiment with new flavors or ingredients in the **Classic** category to maintain customer interest.
- **Marketing Focus:**
  - Highlight the variety in the **Supreme** and **Veggie** categories in marketing campaigns to showcase diversity.
  - Promote underperforming categories (e.g., **Chicken**) with special offers or limited-time variants.
- **Customer Feedback:**
  - Gather feedback to understand why certain categories have fewer variants and identify opportunities for improvement.
- **Ingredient Management:**
  - Ensure sufficient stock of ingredients for categories with more variants to avoid stockouts.
- **Seasonal Offerings:**
  - Introduce seasonal or themed pizzas in categories with fewer variants to test new ideas and attract customers.
 

## Determine the top 3 most ordered pizza types based on revenue for each pizza category :
```sql
SELECT NAME, CATEGORY, REVENUE
 FROM
 
(SELECT CATEGORY, NAME, REVENUE, RANK() OVER (partition by category ORDER BY REVENUE DESC) AS CAT_REV
FROM 

(SELECT 
    PT.NAME,PT.category, ROUND(SUM((PI.PRICE * OD.QUANTITY)), 0) AS REVENUE
FROM
    pizza_types PT
        INNER JOIN
    pizzas PI ON PT.pizza_type_id = PI.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1,2) AS A ) 
AS B
WHERE CAT_REV <=3;
```
--Output--
| NAME                      | CATEGORY | REVENUE |
|---------------------------|----------|---------|
| The Thai Chicken Pizza    | Chicken  | 43434   |
| The Barbecue Chicken Pizza| Chicken  | 42768   |
| The California Chicken Pizza| Chicken | 41410   |
| The Classic Deluxe Pizza  | Classic  | 38180   |
| The Hawaiian Pizza        | Classic  | 32273   |
| The Pepperoni Pizza       | Classic  | 30162   |
| The Spicy Italian Pizza   | Supreme  | 34831   |
| The Italian Supreme Pizza | Supreme  | 33477   |
| The Sicilian Pizza        | Supreme  | 30940   |
| The Four Cheese Pizza     | Veggie   | 32266   |
| The Mexicana Pizza        | Veggie   | 26781   |
| The Five Cheese Pizza     | Veggie   | 26066   |

---

## Interpretation
- **Chicken Category Dominance:**
  - The **Thai Chicken Pizza**, **Barbecue Chicken Pizza**, and **California Chicken Pizza** are the top revenue generators, contributing significantly to the **Chicken** category.
- **Classic Category:**
  - The **Classic Deluxe Pizza** leads in revenue, followed by the **Hawaiian Pizza** and **Pepperoni Pizza**.
- **Supreme Category:**
  - The **Spicy Italian Pizza** and **Italian Supreme Pizza** are the top performers in this category.
- **Veggie Category:**
  - The **Four Cheese Pizza** generates the highest revenue, followed by the **Mexicana Pizza** and **Five Cheese Pizza**.

---

## Actionable Insight
- **Promote Top Performers:**
  - Highlight the top revenue-generating pizzas in marketing campaigns and menu displays.
  - Bundle them with complementary items (e.g., drinks, desserts) to increase average order value.
- **Optimize Pricing:**
  - Analyze the pricing strategy of high-revenue pizzas to ensure they remain competitive while maximizing profitability.
- **Menu Engineering:**
  - Use revenue data to balance the menu, ensuring popular pizzas are well-stocked and promoted.
  - Experiment with new variations or limited-time offers in high-performing categories.
- **Customer Preferences:**
  - Gather feedback to understand why these pizzas are preferred and use insights to improve other menu items.
- **Cross-Selling Opportunities:**
  - Use high-revenue pizzas as anchor items to promote other menu offerings (e.g., "Pair your Thai Chicken Pizza with a refreshing drink!").
- **Category-Specific Strategies:**
  - For **Chicken** pizzas, consider introducing premium or seasonal variations to further boost revenue.
  - For **Veggie** pizzas, emphasize health benefits and unique flavors to attract more customers.


## Calculate the percentage contribution of each pizza type to total revenue :
```sql
SELECT 
    PT.category,
    ROUND((ROUND(SUM((PI.PRICE * OD.QUANTITY)), 0)) / (SELECT 
                    ROUND(SUM((QUANTITY * PRICE)), 2)
                FROM
                    order_details O
                        INNER JOIN
                    pizzas P ON O.PIZZA_ID = P.pizza_id),
            2) * 100 AS PERCENTAGE_REVENUE
FROM
    pizza_types PT
        INNER JOIN
    pizzas PI ON PT.pizza_type_id = PI.pizza_type_id
        INNER JOIN
    order_details OD ON OD.PIZZA_ID = PI.pizza_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;
```
--Output--
| category | PERCENTAGE_REVENUE |
|----------|--------------------|
| Classic  | 27                 |
| Supreme  | 25                 |
| Veggie   | 24                 |

---

## Interpretation
- The **Classic** category contributes the **highest percentage of revenue (27%)**, followed closely by **Supreme (25%)** and **Veggie (24%)**.
- This indicates a relatively balanced revenue distribution across these categories, with **Classic** pizzas slightly outperforming the others.

---

## Actionable Insight
- **Focus on Classic Pizzas:**
  - Continue promoting **Classic** pizzas as they are the top revenue drivers.
  - Introduce new variations or limited-time offers to maintain customer interest.
- **Optimize Supreme and Veggie Categories:**
  - For **Supreme** pizzas, emphasize premium ingredients and unique flavors to justify their higher price point.
  - For **Veggie** pizzas, highlight health benefits and innovative recipes to attract health-conscious customers.
- **Menu Engineering:**
  - Use revenue data to balance the menu, ensuring popular categories are well-stocked and promoted.
  - Experiment with new offerings in lower-performing categories to boost their revenue contribution.
- **Marketing Strategies:**
  - Run targeted campaigns for **Supreme** and **Veggie** pizzas to increase their market share.
  - Bundle pizzas from different categories to encourage cross-category sales.
- **Customer Feedback:**
  - Gather feedback to understand customer preferences and refine recipes or marketing strategies.
- **Seasonal Campaigns:**
  - Introduce seasonal or themed pizzas in all categories to attract new customers and boost revenue.

## Analyze the cumulative revenue generated over time:
```sql
SELECT 
   DATE, 
      ROUND(SUM(REVENUE) OVER(ORDER BY DATE),2 ) AS CUM_REVENUE
FROM
(SELECT 
    OO.DATE AS DATE,
    ROUND(SUM((OD.QUANTITY * PI.PRICE)), 2) AS REVENUE
FROM
    ORDER_DETAILS OD
        INNER JOIN
    pizzas PI ON OD.pizza_id = PI.pizza_id
        INNER JOIN
    ORDERS OO ON OO.ORDER_ID = OD.ORDER_ID
GROUP BY 1) AS SALES;
```
--Output--
| DATE     | CUM_REVENUE |
|----------|-------------|
| 01-01-15 | 2713.85     |
| 02-01-15 | 5445.75     |
| 03-01-15 | 8108.15     |
| 04-01-15 | 9863.6      |
| 05-01-15 | 11929.55    |

---

## Interpretation
- The cumulative revenue shows a steady increase over the first five days of January 2015.
- By **January 5, 2015**, the total revenue reached **$11,929.55**.
- This trend indicates consistent sales activity during this period.

---

## Actionable Insight
- **Performance Tracking:**
  - Use cumulative revenue data to track daily performance and identify trends.
  - Compare this data with other time periods (e.g., weeks, months) to assess growth or seasonal patterns.
- **Goal Setting:**
  - Set daily or weekly revenue targets based on historical cumulative revenue trends.
  - Identify underperforming days and implement strategies to boost sales (e.g., promotions, discounts).
- **Resource Allocation:**
  - Allocate resources (e.g., staff, inventory) based on expected revenue growth.
  - Ensure sufficient stock and staffing during periods of high sales activity.
- **Marketing Campaigns:**
  - Run targeted campaigns during slower periods to increase sales and maintain consistent revenue growth.
  - Highlight high-performing days in marketing materials to attract more customers.
- **Customer Engagement:**
  - Analyze customer behavior during high-revenue periods to identify preferences and tailor offerings.
  - Use loyalty programs or incentives to encourage repeat purchases and sustain revenue growth.
