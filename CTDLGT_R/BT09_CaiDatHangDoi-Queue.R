library(dequer)
q <- queue()
n = c(1,2,3)
for (i in n) pushback(q, i)
str(q)
pop(q)
str(q)

