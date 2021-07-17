selection_sort<- function(x){
  n<-length(x)
  for (i in 1:(n-1)){
    for (j in (i+1):n){
      if (x[j]<x[i]){
        temp<-x[i]
        x[i]<-x[i]
        x[j]<-temp
      }
    }
  }
  return (x)
}
dulieu <- c(32, 17, 49, 98, 06, 25, 53, 61)
selection_sort(dulieu)
selfsort <- function(x){
  if (length(x)>1){
    min<-which.min(x)
    c(x[min], selfsort(x[-min]))
    
  }else X
}

