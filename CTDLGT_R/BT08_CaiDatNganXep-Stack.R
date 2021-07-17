library(dequer)
st <- stack()
n = c(1,2,3,4,5,6)
for (i in n) push(st, i)
str(st)
pop(st)
str(st)

