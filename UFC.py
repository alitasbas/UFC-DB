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

#####################################################################

import MySQL.connector

mydb=mysql.connector.connect(
  host="localhost",
  user="root",
  password="student",
  database="UFC"
)

print(mydb)

mycursor=mydb.cursor()

mycursor.execute("""
SELECT 
    FIGHT.id AS fight_id,
    FIGHT.event_date AS fight_date,
    FIGHT.weight_class,
    CONCAT(FIGHTER.first_name, ' ', FIGHTER.last_name) AS winner_name
FROM 
    FIGHT
JOIN 
    FIGHTER ON FIGHT.winner_id = FIGHTER.id
WHERE 
    FIGHT.wins_by IN ('KO', 'TKO');
""")

for x in mycursor:
    print(x)

##########################################################################
import MySQL.connector

mydb=mysql.connector.connect(
  host="localhost",
  user="root",
  password="student",
  database="UFC"
)

print(mydb)

mycursor=mydb.cursor()

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

