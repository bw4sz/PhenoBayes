setwd("C:/Users/Ben/Documents/PhenoBayes/")

sink("flower.jags")

cat("
    model {
    for(i in 1:length(y)){
    y[i] ~ dpois(mu[i])
    mu[i] <- alpha + beta * Elevation[i] + beta2*pow(Elevation[i],2)
}
  alpha ~ dgamma(0.001,0.001)
  beta ~ dgamma(0.001,0.001)
  beta2 ~ dgamma(0.001,0.001)

    }",fill = TRUE)

sink()
