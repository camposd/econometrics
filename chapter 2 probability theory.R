##2.1 
# Random Variables and Probability Distributions

#PRob Dist of Discrete random variables
sample(1:6,1)

# generating a vector of probabilities
probability <- rep(1/6,6)

# plotting the probability distribution
plot(probability,
     main = "Probability",
     xlab = "Outcomes")

# generating the cumulative probability
cum_probability <- cumsum(probability)

plot(cum_probability,
     main = "Cumulative Probability",
     xlab = "Outcomes")

# Bernoulli Trials
# simulating trials of a dichotimous variable

bern <- sample(c("H","T"),1000, replace = TRUE)

# using the binomial distribution 
# utilizes the binomial formula
dbinom(x = 5,
       size = 10,
       prob = 0.5)

# i.e., whats the probabiltiy of observing 5 "successes"
# in 10 trials with a probability of 0.5

# what is the probability of observing P(4<=k<=7)
# basically provide a vector argument itno your probabilty distribution

sum(dbinom(x = 4:7, size = 10, prob = 0.5))


# the probability distribution of a discrete random variable is
# the list of all possible outcomes and their respective probabilities

k <- 0:10
probability <- dbinom(x = k,
                      size = 10,
                      prob = 0.5)
prob <- pbinom(q = k,
               size = 10,
               prob = 0.5)

plot( x = k,
     y = probability,
     main = "probability distribution of a binomial function")

plot(x = k,
     y = prob,
     main = "Cumulative Probability Distribution")

#expected value, mean, and variance
set.seed(1) 
mean(1:6)

# rolling a dice three times in a row
sample(1:6, 3, replace = TRUE)

# calculating the expectation of a large trial
set.seed(1)
mean(sample(1:6,
            10000,
            replace = TRUE))

# Variance and standard deviation
# variance is the square sum of the difference between an observation
# and the mean; 

# there's a difference between population variance and the sample 
# variance(obviously) in that one is less accurate 

var(1:6)

#probability density functions
# we use the probability density fucntion for continuous random variables beacuse
# they're not discrete! can't use a probability distribution!

# learn more math Diego

# calculating the expectation and variance of a PDF in R
f <- function(x) 3/x^4
g <- function(x) x * f(x)
h <- function(x) x^2 * f(x)

# computing area under the density curve
area <- integrate(f,
                  lower = 1, 
                  upper = Inf)$value
area

# compuet the expectation of x; E(X)
EX <- integrate(g,
                lower = 1,
                upper = Inf)$value
EX

# compute the variance of x; Var(X)
VarX <- integrate(h,
                  lower = 1,
                  upper = Inf)$value
VarX

# every distribution that R handles has four functions associated with it to 
# find the PDF, the cumulative density function (pnorm), the 
# quantiles, qnorm, and the random number generator based on that 
# function (rnorm())

# drawing a plot of the standard normal distribution
curve(dnorm(x),
      xlim = c(-3.5,3.5),
      ylab = "Density",
      main = "Standard Normal Density Function")
