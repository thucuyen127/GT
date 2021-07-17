library(purrr)
library(dplyr)

knight_offsets <- matrix(c(
  1,    2,
  2,    1,
  -2,    1,
  -1,    2,
  2,   -1,
  1,   -2,
  -1,   -2,
  -2,   -1
), ncol = 2, byrow = TRUE)
move_knight <- function(this_move, moves, visited) {
  
  moves <- append(moves, list(this_move))
  visited[this_move[1] + (this_move[2] - 1)*8] <- TRUE
  
  if (all(visited)) {
    return(moves)
  }
  
  next_move <- cbind(knight_offsets[,1] + this_move[1], knight_offsets[,2] + this_move[2])
  
  on_board  <- next_move[,1] %in% 1:8 & next_move[,2] %in% 1:8
  next_move <- next_move[on_board,,drop=FALSE]
  
  not_yet_visited <- !visited[next_move]
  next_move <- next_move[not_yet_visited,, drop = FALSE]
  
  for (i in seq_len(nrow(next_move))) {
    res <- move_knight(next_move[i,, drop = FALSE], moves, visited)
    if (!is.null(res)) {
      return(res)
    }
  }
  
  NULL
}
move_knight(c(4, 4), moves = list(), visited = matrix(FALSE,8, 8))

