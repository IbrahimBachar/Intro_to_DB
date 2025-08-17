import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="IBRAHIM2525"
);

mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store");


print("Database 'alx_book_store' created successfully!")

mycursor.close()
mydb.close()