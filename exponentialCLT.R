# Simulate exponential distribution in R and compare it with the Central Limit Theorem.
# Get means of samples sets of size 40 each.
n <- 40
k <- 10000
# This is defined per the project requirements
lambda <- 0.2

expdist <- rexp(n, lambda)
mn <- mean(expdist)

hist(expdist)
mns = NULL

for (i in 1:k) {
  expmean <- mean(rexp(n, lambda))
  mns = c(mns, expmean)
}
meanofmeans <- mean(mns)
sdofmeans <- sd(mns)
cat("Mean of the n sample means =", meanofmeans ,"\n")
cat("Expected Mean of the n sample means =", 1/lambda ,"\n")
cat("Standard Deviation of the n sample means =", sdofmeans,"\n")
cat("Expected Standard Deviation of the n sample means =", (1/lambda)/sqrt(n),"\n")
hist(mns,breaks = 40)

x <- seq(2,9,by=.05)
y <- k/5*dnorm(x,mean=meanofmeans,sd=sqrt(sdofmeans))
points(x,y,pch=".",cex=3)