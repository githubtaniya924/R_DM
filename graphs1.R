library(igraph)
edges = c("A","B","A","C","A","D","B","C","D","C","D","E","C","E")

g= make_graph(edges,directed = FALSE)
plot(g)

weight = c(3,5,4,6,7,9,8)

E(g)$WEIGHT = weight

plot(g, edge.label = E(g)$weight)
plot(g, edge.label = WEIGHT)

adj_mat = matrix(c(0,200,75,180,200,0,150,250,75,150,0,120,180,250,120,0), byrow = TRUE, nrow = 4 ) 

graph = graph_from_adjacency_matrix(adjmatrix = adj_mat, mode = "undirected", weighted = TRUE)

V(graph)$name = c("Mumbai","Pune","Nashik","Thane")

plot(graph,vertex.color = "red", edge.color = "blue")

mst_graph = mst(graph,algorithm = "prim")
mst_graph
plot(mst_graph, vertex.color = "pink", edge.color = "green")

