# install.packages("RMySQL", repos = "http://cran.us.r-project.org")
library(RMySQL)

mydb = dbConnect(MySQL(), user='root', password='12345', dbname='sync', host='192.168.32.2')
# dbListTables(mydb)
rs = dbSendQuery(mydb, "insert into `date` (alias, value) values ('dante', 69);")
# data = fetch(rs, n=-1)
# print(data)