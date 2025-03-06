#binomial distribution
dbinom(x = 3, size = 5, prob = 0.25)
pbinom(q = 2, size = 5, prob = 0.12)

x = 0:5
y = pbinom(q = x, size = 10, prob = 0.12)
plot(x, y, main = "Binomial Distribution", xlab = "value of x", ylab = "probability", type = "h")

#poisson distribution
dpois(x = 3, lambda = 2)
ppois(q = 3, lambda = 2)

x = 0:5
y = ppois(q = x, lambda = 2)
plot(x, y, main = "poisson Distribution", xlab = "value of x", ylab = "probability", type = "h")

#normal distribution
dnorm(x = 15, mean = 40, sd = 8)
pnorm(q = 15, mean = 40, sd = 10)
x = 0:5
y = pnorm(q = x, mean = 30, sd = 10)
plot(x, y, main = "Normal Distribution", xlab = "value of x", ylab = "probability", type = "h")

