# R code for GARCH(1,1) estimation

install.packages("tseries")

library(tseries)



mydata<- read.csv("SPR.csv")

attach(mydata)



# Defining variables



X <- Return



# Descriptive statistics and plotting the data



summary(X)



plot(X)



arch.X= garch(X,order=c(0,1))

summary(arch.X)



Garch.X = garch(X,order=c(1,1))

summary(Garch.X)