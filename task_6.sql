import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="IBRAHIM2525",
    database="alx_book_store"
);

mycursor = mydb.cursor()

sql = """INSERT INTO customers (customer_id, customer_name, email, address) VALUES (%s, %s, %s, %s)"""
val = """
    (2, "Blessing Malik", "bmalik@sandtech.com", "124 Happiness  Ave."),
    (3, "Obed Ehoneah", "eobed@sandtech.com", "125 Happiness  Ave."),
    (4, "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happiness  Ave.");
    """
mycursor.execute(sql, val)
mydb.commit()

mycursor.close()
mydb.close()
