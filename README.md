# Data Loads Snowflake

This project is about loading Walmart sales data into a Snowflake data warehouse, transforming it into a more structured format, and creating a data model for business analysis.

## Files

- `walmart raw data.zip`: Raw data files in CSV format.
- `build_os_db.sql`: SQL script for creating the schema and tables in the Snowflake data warehouse.
- `walmart-ddl.sql`: SQL script for creating the data model tables in Snowflake.
- `walmart-dml.sql`: SQL script for transforming the data from the original tables to the target tables in the data model.
- `walmart-dataload-checker.sql`: SQL script for checking the completeness of the data load process.

## Usage

1. Unzip the `walmart raw data.zip` file.
2. Create a Snowflake account and a database.
3. Execute the `build_os_db.sql` script to create the schema and tables in the Snowflake database.
4. Load the raw data files into Snowflake using `DBeaver`
5. Execute the `walmart-ddl.sql` script to create the data model tables in Snowflake.
6. Execute the `walmart-dml.sql` script to transform the data from the original tables to the target tables in the data model.
7. Execute the `walmart-dataload-checker.sql` script to check the completeness of the data load process.

