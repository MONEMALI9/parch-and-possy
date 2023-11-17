# import needed packages <sqlite3>
import sqlite3

#create connection object
con = sqlite3.connect("pandp.db")

#create cursor object
cur = con.cursor()

#write your statement <query>
fileobj = open("query.txt","r")
statement = fileobj.read()
##print(statement)

#execute query
res = cur.execute(statement)

#fetch result
rows = res.fetchall()

for r in rows:
    print(r)
    
#close your cursor and your connection
cur.close()
con.close()
