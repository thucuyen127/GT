tower_of_hanoi <- function(n = 3) {

  tower <- list(1:n, NULL, NULL)
  
  move.hanoi <- function(k, from, to, via) {
    if (k > 1) {
      move.hanoi(k - 1, from, via, to)
      move.hanoi(1, from, to, via)
      move.hanoi(k - 1, via, to, from)
    }
    else {
      cat("Move ", tower[[from]][1], " from ", LETTERS[from],
          " to ", LETTERS[to], "\n")
      tower[[to]] <<- c(tower[[from]][1], tower[[to]])
      tower[[from]] <<- tower[[from]][-1]
      Sys.sleep(0.5)
    }
  }

  move.hanoi(n, 1, 2, 3)
}
tower_of_hanoi(3)
