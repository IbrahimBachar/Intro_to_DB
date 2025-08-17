import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="IBRAHIM2525",
    database="alx_book_store"
);

mycursor = mydb.cursor()

mycursor.execute("USE alx_book_store;")
mycursor.execute("SHOW TABLES")
for table in mycursor:
    print(table)
    
mycursor.close()
mydb.close()