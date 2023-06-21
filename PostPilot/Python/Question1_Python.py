import pandas as pd
import sqlite3 as sql

connect = sql.connect('PostPilot/Chinook_Sqlite.sqlite')

query = """
SELECT * 
FROM Invoice
"""

df = pd.read_sql_query(query,connect)

df.to_csv('PostPilot/Python/question1_export.csv')