import pandas as pd
import sqlite3 as sql

connect = sql.connect('PostPilot/Chinook_Sqlite.sqlite')

query = """
SELECT * 
FROM Invoice
GROUP BY STRFTIME("%m-%Y", InvoiceDate)
"""

df = pd.read_sql_query(query,connect)

df.to_csv('PostPilot/Python/question2_export.csv')