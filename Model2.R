setwd("C:/Users/Ben/Documents/PhenoBayes/")

sink("flower.jags")

cat("
    model {
    for(i in 1:length(y)){
    y[i] ~ dlnorm(mu[i],tau)
    mu[i] <- alpha + beta * Elevation[i]
}
  alpha ~ dnorm(0.001,0.001)
  beta ~ dnorm(0.001,0.001)
  tau ~ dgamma(0.001,0.001)

    }",fill = TRUE)

sink()
