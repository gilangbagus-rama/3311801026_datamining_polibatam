tempat_tb <- ("e:/TB DM/ini tugas")
setwd (tempat_tb)
getwd ()

library(C50)
library(printr)

dataset <- read.csv("bank.csv" , sep = ";")
summary(dataset)

model <- C5.0(y ~ age,pdays,duration, data = dataset)
summary(model)

plot(model)

datatesting <- dataset[,1:17]
prediksi <- predict(model, datatesting)
table(prediksi,dataset$y)


