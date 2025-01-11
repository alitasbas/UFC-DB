import MySQL.connector

mydb=mysql.connector.connect(
  host="localhost",
  user="root",
  password="student",
  database="UFC"
)

print(mydb)

mycursor=mydb.cursor()

mycursor.execute("SELECT * FROM `FIGHTER` WHERE nationality='USA'")

for x mycursor:
  print(x)
