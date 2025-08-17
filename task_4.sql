import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="IBRAHIM2525",
    database="alx_book_store"
);

mycursor = mydb.cursor()

# mycursor.execute("SHOW TABLES")

mycursor.execute("""
    SELECT COLUMN_NAME, COLUMN_TYPE
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books'
""")
for column in mycursor.fetchall():
    print(column)
    
mycursor.close()
mydb.close()