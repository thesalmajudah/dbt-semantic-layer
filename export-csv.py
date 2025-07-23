import duckdb

# Open your DuckDB database
con = duckdb.connect("duckdb-demo.duckdb")

# Export table to CSV
con.execute("""
    COPY (SELECT * FROM bank_failures)
    TO 'C:/Users/salma.mahmoud/Downloads/bank_failures.csv'
    (HEADER, DELIMITER ',');
""")

con.close()
print("✅ Exported successfully.")