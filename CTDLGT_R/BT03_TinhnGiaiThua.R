giai_thua <- function(n) {
  if(n <= 1) {
    return(1)
  } else { 
    return(n * giai_thua(n-1))
  }
}

giai_thua(6)
