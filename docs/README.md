# Project Documentation

## Data Source

The dashboard uses simulated data that represents what would be returned from executing SQL queries against an e-commerce database. In a production environment, this data would come from actual database tables.

### Database Schema

The project assumes a database schema with the following tables:

- `products`: Product information
- `customers`: Customer details
- `sales`: Sales transactions
- `sales_targets`: Sales targets by category and quarter
- `employees`: Employee information
- `employee_sales`: Employee sales performance
- `financial_data`: Financial metrics

### Data Flow
Database → SQL Queries → Data Processing → API → Frontend → Visualizations


## Implementation Details

### Frontend Architecture

The frontend is built with:
- HTML5 for structure
- CSS3 for styling with custom properties for theming
- Vanilla JavaScript for interactivity
- Chart.js for data visualization
- Bootstrap 5 for responsive UI components

### SQL Techniques Implemented

1. **Window Functions**: Used for calculating running totals, moving averages, and growth rates
2. **Subqueries**: Nested queries for complex comparisons and calculations
3. **Common Table Expressions (CTEs)**: Temporary result sets for complex queries
4. **Recursive Queries**: For hierarchical and cumulative data analysis
5. **Performance Optimization**: Indexing, partitioning, and query rewriting

### Visualization Types

- Line charts for trend analysis
- Bar charts for comparisons
- Radar charts for multi-dimensional analysis
- Stacked charts for composition analysis

## Customization Guide

### Adding New Visualizations

1. Create a new section in `index.html`
2. Add the corresponding SQL code example
3. Implement the chart in `js/main.js`
4. Style as needed in `css/style.css`

### Connecting to a Real Database

1. Set up a backend API (Node.js, Python, etc.)
2. Create endpoints that execute the SQL queries
3. Modify the frontend to fetch data from these endpoints
4. Update the visualizations to use the real data

### Styling Customization

The project uses CSS custom properties for theming. To change the color scheme:

1. Modify the `:root` section in `css/style.css`
2. Update the color variables to match your brand
