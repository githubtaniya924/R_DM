library(e1071)

data = iris

data_sample = data[1:2,-5]

model = naiveBayes(Species ~.,data)

model

prediction = predict(model, data_sample)
prediction