library(tidyverse)

place_queen <- function(queens=c()) {
  
  if (length(queens) == 8) {
    return(list(queens))
  }
  
  possible_placements <- setdiff(1:8, queens)
  
  diag_offsets <- seq.int(length(queens), 1)
  diags <- c(queens + diag_offsets, queens - diag_offsets)
  diags <- diags[diags > 0 & diags < 9]
  
  possible_placements <- setdiff(possible_placements, diags)
  
  possible_placements %>% 
    map(~place_queen(c(queens, .x))) %>%
    keep(~length(.x) > 0) %>%
    flatten()
}

solutions <- place_queen()
