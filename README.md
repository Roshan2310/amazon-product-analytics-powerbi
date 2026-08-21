# 📊 Amazon Product Analytics – Power BI

## 📌 Project Overview

This project analyzes Amazon product data using Microsoft Power BI to understand product categories, pricing, discount strategies, product ratings, and customer engagement.

The dashboard provides an interactive view of product performance and helps identify pricing patterns, discount opportunities, category-level trends, and customer review activity.

The analysis covers 1,351 products across 211 categories. The hierarchical category field was transformed using SQL to extract 9 main product categories for category-level analysis. The Power BI dashboard provides interactive analysis using Main Category, Price Band, and Discount Band filters.

---

## 🎯 Business Objective

The objective of this project is to analyze Amazon product data and answer key business questions related to:

- Product category distribution
- Product pricing
- Discount strategies
- Product ratings
- Customer review engagement
- Category-level performance
- Price and discount relationships

The analysis converts product-level data into meaningful business insights and recommendations.

---

## 🛠️ Tools & Technologies

- **SQL Server** – Data analysis, transformation, aggregation, and business queries
- **Microsoft Power BI** – Dashboard development and interactive visualization
- **Power Query** – Data cleaning and transformation
- **DAX** – Analytical calculations and KPIs
- **Excel / CSV** – Source data
- **Data Visualization** – Business reporting and analysis

---

### 📊 Key KPIs

| KPI | Value |
|---|---:|
| Total Products | 1,351 |
| Total Categories | 211 |
| Main Categories | 9 |
| Average Rating | 4.10 |
| Average Actual Price | ₹5,445 |
| Average Discounted Price | ₹3,125 |
| Average Discount | 47.69% |
| Average Discount Amount | ₹2,320 |

---

### 🗄️ SQL Analysis

SQL Server was used to perform data analysis and prepare the dataset for business reporting.

Key SQL analyses include:

- Overall product and category KPIs
- Product count by main category
- Average rating by main category
- Average discount percentage by main category
- Average rating count by main category
- Price band analysis
- Top 10 most expensive products
- Top 10 most reviewed products
- Top 10 products by rating
- Top 10 products by discount percentage
- Actual vs. discounted price analysis
- Discount percentage vs. product rating

The SQL analysis also extracts **9 main categories** from the hierarchical `category` field using SQL string transformation.

📄 **[View SQL Analysis](SQL/amazon_product_analysis.sql)**

---

### 📊 Power BI Dashboard

The Power BI dashboard transforms the SQL analysis into an interactive business reporting solution.

The dashboard is organized into six pages covering:

- **Executive Overview** – Overall KPIs, product volume, pricing, and category performance
- **Pricing & Discount Analysis** – Price comparison and discount patterns
- **Product & Rating Analysis** – Product ratings and customer review activity
- **Category & Product Deep Dive** – Category-level and product-level analysis
- **Discount & Rating Insights** – Relationship between discounts, ratings, and customer engagement
- **Business Insights & Recommendations** – Key findings and actionable recommendations

The dashboard includes interactive filters and visuals to explore product performance across categories, price bands, ratings, discounts, and customer review counts.

---

## 📊 Dashboard Preview

### 1. Amazon Product Overview

![Amazon Product Overview](Screenshots/01-amazon-product-overview.png)

### 2. Pricing & Discount Analysis

![Pricing & Discount Analysis](Screenshots/02-pricing-discount-analysis.png)

### 3. Product & Rating Analysis

![Product & Rating Analysis](Screenshots/03-product-rating-analysis.png)

### 4. Category & Product Deep Dive

![Category & Product Deep Dive](Screenshots/04-category-product-deep-dive.png)

### 5. Discount & Rating Insights

![Discount & Rating Insights](Screenshots/05-discount-rating-insights.png)

### 6. Business Insights & Recommendations

![Business Insights & Recommendations](Screenshots/06-business-insights-recommendations.png)

---

## 🔍 Key Business Insights

### 💰 Pricing & Discount

- The average actual product price is **₹5,445**.
- The average discounted price is **₹3,125**.
- The average discount is **47.69%**.
- The average discount amount is approximately **₹2,320**.
- Several categories show average discounts above 50%, indicating aggressive promotional pricing in selected segments.

### 📦 Category Performance

- **Electronics** has the highest product volume with **526 products**, followed by **Computers & Accessories (453)** and **Home & Kitchen (448)**.
- **Electronics** has the highest average discounted price at approximately **₹5,966**, indicating a strong presence of higher-value products.

### ⭐ Rating & Customer Engagement

- The overall average product rating is **4.10**.
- Products in the **₹500–₹999 price band** have the highest average rating count at approximately **22.2K**, indicating strong customer engagement in this segment.
- The **₹500–₹999 price band** also has the highest average discount at approximately **54.62%**.
- Products priced at **₹5,000+** have the highest average rating at approximately **4.13**.

### 📈 Discount & Rating Relationship

The relationship between **discount percentage and product rating** varies across products, suggesting that discounting alone does not determine customer ratings.

### 💡 Additional Pricing Insight

- **Electronics** shows a substantial difference between average actual price and average discounted price, making it an important category for pricing analysis.

---

## 💡 Business Recommendations

### 01. Optimize Discounts

Avoid applying uniformly high discounts across all products. Identify products and categories where smaller discounts can maintain strong ratings and customer demand while protecting pricing value.

### 02. Focus on Electronics

Electronics has the highest product volume and the highest average discounted price among the main categories. Prioritize inventory, promotions, and assortment optimization in this category.

### 03. Improve Review Engagement

Encourage verified customers to leave reviews, particularly in categories with lower rating counts. Higher review engagement can improve product credibility and purchasing confidence.

### 04. Monitor Price–Discount Strategy

Track actual price, discounted price, and discount percentage together to identify products where heavy discounting may not be necessary.

---

## 📂 Project Structure

```text
amazon-product-analytics-powerbi/
│
├── Dataset/
│   └── amazon_product_data.xlsx
│
├── PowerBI/
│   └── Amazon_Product_Analytics.pbix
│
├── SQL/
│   └── amazon_product_analysis.sql
│
├── Screenshots/
│   ├── 01-amazon-product-overview.png
│   ├── 02-pricing-discount-analysis.png
│   ├── 03-product-rating-analysis.png
│   ├── 04-category-product-deep-dive.png
│   ├── 05-discount-rating-insights.png
│   └── 06-business-insights-recommendations.png
│
└── README.md
