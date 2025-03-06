library(lpSolve)

n = 3
m = 4

con_mat = matrix(0,nrow = n, ncol = m)

for(i in 1:n){
  for(j in 1:m){
    con_mat[i,j] = as.integer(readline(paste("Enter values: ")))
  }
}

rhs = c(120,70,50)
rhs_sign = c("=","=","=")

lhs = c(60,40,30,110)
lhs_sign = c("=","=","=","=")

sol = lp.transport(cost.mat = con_mat, direction = "min", row.signs = rhs_sign,
                   row.rhs = rhs, col.signs = lhs_sign, col.rhs = lhs)

sol$solution
sol$objval