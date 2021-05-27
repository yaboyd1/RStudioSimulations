# Flip a fair coin once
rbinom(1, 1, 0.5)

# Flip 10 coins
rbinom(10, 1, 0.5)

# How many heads in 10 tosses
rbinom(1, 10, 0.5)

# How many heads in 10 tosses of 10 coins
rbinom(10, 10, 0.5)

# Heads in 10 tosses of 10 unfair coins
rbinom(10, 10, 0.8)

# Heads in 10 tosses of 10 unfair coins
rbinom(10, 10, 0.2)

# rbinom(n, size, prob)
# n - number of experiements
# size - number of coin flips
# probabilty of a 1 (or heads)

# Flipping 10 fair coins 100,000 times
rbinom(100000, 10, 0.5)

# Exercise 1:
# Generate 100 experiments of flipping 10 coins, each with 30% probability
# What is the most common number? Why?

rbinom(100, 10, 0.3)
# The most common number should be 3

# Binomial Distribution has two parameters:
# X ~ Binomial(size, p)
# size - number of coin flips
# p - probability of seeing one head in a coin flip
# Random Variable X denotes the number of heads

# We flip a fair coin 10 times. What is the probability of seeing 5 heads?
# X ~ Binomial(10, 0.5)
# P(X = 5)?

# Simulation

# 100,000 experiments, in each experiment there are 10 fair coin flips
flips <- rbinom(100000, 10, 0.5)

# Percentage of seeing 5 heads among 100,000 outcomes
mean(flips == 5)

# dbinom finds the probability using and EXACT calculation
dbinom(5, 10, 0.5)

# dbinom(k, 10, 0.5) returns P(X = k) = Px(k) if X ~ Binomial(10, 0.5)

# Flip 10 fair coins, what is the probability that we see k = 5 heads
dbinom(5, 10, .5)

# Flip 10 fair coins, what is the probability that we see k = 6 heads
dbinom(6, 10, .5)

# Flip 10 fair coins, what is the probability that we see k = 7 heads
dbinom(7, 10, .5)

# Exercise 2:
# If you flip 10 coins each with a 30% of heads,
# What is the probability exactly 2 of them are heads?
# Compare your simulation with the exact calculation

# Simulation
flips <- rbinom(100000, 10, 0.3)
mean(flips == 2) 
# Output: 0.23113

# EXACT Calculation
dbinom(2, 10, 0.3)
# Output: 0.2334744

# Exercise 3
# Use 10,000 experiments and report the result
# Use 100,000,000 experiments and report the result
# Compare your results with the exact calculation
# What is your conclusion?

# 10,000
flips <- rbinom(10000, 10, 0.3)
mean(flips == 2)
# Output: 0.2266

# 100,000,000
flips <- rbinom(100000000, 10, 0.3)
mean(flips == 2) 
# Output: 0.2334554

# EXACT Calculation: 0.2334744
dbinom(2, 10, 0.3)

# Conclusion: More experiments, more accurate result

# X ~ Binomial(10, 0.5)
# What is E[X] (Expectation of X)?

# Average number of heads
mean(flips <- rbinom(100000, 10, 0.5))
# Output: Around 5

# X ~ Binomial(100, 0.2)
# What is E[X] (Expectation of X)

# Average number of heads
mean(flips <- rbinom(100000, 100, 0.2))
# Output: Around 20

# Exercise 4:
# What is the expected value of a binomial distribution when 25  coins are 
# flipped each having a 30% chance of heads occuring?
# Compare your simulation with the exact calculation

# Simulation
mean(flips <- rbinom(10000, 25, 0.3))
# Output: 7.5138

# Exact Calculation: 7.5 
25 * 0.3

# The simulation and the exact calculation are very similar

# X ~ Binomial(10, 0.5)
# What is Var[X] (Variance of X)?
var(rbinom(100000, 10, 0.5))
# Output: Around 2.5

# X ~ Binomial(100, 0.2)
# What is Var[X] (Variance of X)?
var(rbinom(100000, 100, 0.2))
# Output: Around 16

# Exercise 5:
# What is the variance of a binomial distrubiton where 25 coins are flipped, 
# each having a 30% chance of heads?
# Compare your simulation with the exact calculation

# Simulation
var(rbinom(1000000, 25, 0.3))
# Output: 5.248078

# Exact Calculation
25 * 0.3 * (1 - 0.3)
# Output: 5.25

# Simulate is close to the exact value
