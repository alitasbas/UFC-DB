import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="student",
database="UFC"
)

print(mydb) 

mycursor = mydb.cursor()

mycursor.execute("""
SELECT 
    SPONSOR.name AS sponsor_name,
    COUNT(EVENT.id) AS total_events_sponsored,
    SUM(EVENT.sponsor_amount) AS total_sponsor_amount
FROM 
    SPONSOR
LEFT JOIN 
    EVENT ON SPONSOR.id = EVENT.sponsor_id
GROUP BY 
    SPONSOR.name;
""")

for x in mycursor:
  print(x) 
