library("igraph")
library("scales")
library("graphsim")
graph_edges <- rbind(c("A", "B"), c("B", "C"), c("C", "E"), c("C", "F"),
                     c("D", "E"), c("F", "G"))
graph <- graph.edgelist(graph_edges, directed = FALSE)
plot_directed(graph)
