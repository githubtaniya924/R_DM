n = 3; #supply
m = 4; #demand

cost_mat = matrix(0,nrow = n, ncol = m)
alt_mat = matrix(0,nrow = n, ncol = m)

for(i in 1:n){
  for(j in 1:m){
    cost_mat[i,j] = as.numeric(readline(paste("Enter cost for supply",i,"and demand",j,": ")))
  }
}

demand = c(60,40,30,110)
supply = c(120,70,50)

for(i in 1:n){
  for(j in 1:m){
    if(supply[i] > demand[j]){
      alt_mat[i,j] = demand[j]
      supply[i] = supply[i] - demand[j]
      demand[j]=0
    }
    else if(demand[j] > supply[i]){
      alt_mat[i,j] = supply[i]
      demand[j] = demand[j] - supply[i]
      supply[i]=0;
    }
    else if(demand[j] == supply[i]){
      alt_mat[i,j] = supply[i]
      supply[i] = 0
      demand[j] = 0
    }
    
  }
}

tot_cost=0;
for(i in 1:n){
  for(j in 1:m){
    tot_cost = tot_cost + alt_mat[i,j]*cost_mat[i,j]
  }
}
tot_cost