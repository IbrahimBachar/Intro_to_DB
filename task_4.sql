import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="IBRAHIM2525",
    database="alx_book_store"
);

mycursor = mydb.cursor()

mycursor.execute("SHOW TABLES")

mycursor.execute("DESC books")

mycursor.close()
mydb.close()