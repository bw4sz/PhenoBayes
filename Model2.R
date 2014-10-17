setwd("C:/Users/Ben/Documents/PhenoBayes/")

sink("flower.jags")

cat("
    model {
    for(i in 1:length(y)){
    y[i] ~ dpois(mu[i])
    log(mu[i]) <- alpha + beta * Elevation[i] + beta2 * Elevation[i]^2 + beta3* month[i]
}
  alpha ~ dnorm(0,0.001)
  beta ~ dnorm(0,0.001)
beta2~dnorm(0,0.001)
beta3~dnorm(0,0.001)

    }",fill = TRUE)

sink()
