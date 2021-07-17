bubble_sort <- function(a){
  i=1
  repeat{
    no_exchange=1
    n= length(a)
    for (j in n:2){
      if (a[(j-1)]>a[j]){
        temp=a[(j-1)]
        a[j] = temp
        no_exchange = 0
      }
    }
    i = i+1
    if (no_exchange || j == (n-1)){break}
  }
  return (a)
}
