# Advanced SQL Techniques for E-commerce Analytics Dashboard

An interactive dashboard showcasing advanced SQL techniques for analyzing e-commerce sales and finance data with stunning visualizations.

## Features

- **Window Functions**: Monthly sales growth analysis
- **Subqueries**: Revenue vs targets comparison
- **Common Table Expressions (CTEs)**: Sales by category and region
- **Recursive Queries**: Cumulative revenue analysis
- **Performance Optimization**: Query performance improvement metrics
- **Employee Performance Analysis**: Quarterly performance tracking

## Technologies Used

- HTML5
- CSS3
- JavaScript (ES6+)
- Chart.js for data visualization
- Bootstrap 5 for UI components
- SQL (PostgreSQL/MySQL compatible)

## Setup Instructions

### Prerequisites

- A modern web browser
- (Optional) A local server (like `python -m http.server` or `live-server`)
- (Optional) A database server (PostgreSQL/MySQL) for real data integration

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/advanced-sql-ecommerce-analytics.git
   cd advanced-sql-ecommerce-analytics

2. Open index.html in your web browser or run a local server:
```bash
# Using Python
python -m http.server 8000

# Then navigate to http://localhost:8000
```

3. (Optional) To use with a real database:
- Set up a PostgreSQL or MySQL database
- Execute the schema in sql/schema.sql
- Import sample data from sql/sample_data.sql
- Modify the JavaScript to fetch data from your database via an API

### Usage
The dashboard provides an interactive interface to explore various SQL techniques applied to e-commerce data:

1. Key Metrics: Overview of important business metrics at the top.
2. Window Functions: Line chart showing monthly sales and growth rates.
3. Subqueries: Bar chart comparing revenue against targets by category.
4. CTEs: Grouped bar chart showing sales by product category and customer segment.
5. Recursive Queries: Line chart showing quarterly and cumulative revenue.
6. Performance Optimization: Bar chart showing query execution time before and after optimization.
7. Employee Performance: Radar chart comparing employee performance against targets.


Each section includes:

- A description of the SQL technique
- Code snippets
- Interactive visualization
- Key business insights

### Project Structure
advanced-sql-ecommerce-analytics/
├── README.md
├── index.html
├── css/
│   └── style.css
├── js/
│   └── main.js
├── sql/
│   ├── schema.sql
│   └── sample_data.sql
├── assets/
│   └── images/
└── data/
    └── (optional: sample data files)

### Future Improvements
- Connect to a real database via a backend API
- Implement user authentication and role-based access
- Add more interactive features (e.g., date range selectors)
- Include additional SQL techniques and visualizations
- Optimize for mobile devices

### License
This project is licensed under the MIT License - see the [LICENSE](https://chat.z.ai/c/LICENSE) file for details.

### Acknowledgments
- Chart.js for the powerful charting library
- Bootstrap for the responsive UI components
