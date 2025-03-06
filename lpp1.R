library(lpSolve)
constraint = 2
variables = 3
  
con_matrix = matrix(0, nrow = constraint, ncol = variables)

cat("Enter the cofficients for the constraints: ")
for(i in 1:constraint){
  for(j in 1:variables){
    con_matrix[i,j] = as.integer(readline(paste("Enter the coff for const ",i," and var ",j,": ")))
  }
}

objv = c(1,2,3)

con_dir = c("<=","<=")

rhs = c(10,5)

sol = lp(direction = "max", objective.in = objv, const.mat = con_matrix, 
         const.dir = con_dir, const.rhs = rhs)

sol$solution
sol$objval