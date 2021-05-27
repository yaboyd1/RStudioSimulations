# Download and load the data
download.file("http://www.openintro.org/stat/data/bdims.RData", destfile = "bdims.RData")
load("bdims.RData")

# Peek at the first few rows
head(bdims)

# Separate male and female data
mdims = subset(bdims, bdims$sex == 1)
fdims = subset(bdims, bdims$sex == 0)

# Look at height column for males and females
fdims$hgt
mdims$hgt

# Create a visual histogram of heights
hist(fdims$hgt)
hist(mdims$hgt)

# Exercise 1: Normal Distribution
fhgtmean = mean(fdims$hgt)
fhgtsd = sd(fdims$hgt)

hist(fdims$hgt, probability = TRUE, ylim = c(0, 0.06))
x = 140:190
y = dnorm(x = x, mean = fhgtmean, sd = fhgtsd)
lines(x = x, y = y, col = "blue")
# Histogram is shaped like a bell curve

# Exercise 2: Evaluating the Normal Distribution
qqnorm(fdims$hgt)
qqline(fdims$hgt)

sim = rnorm(n = length(fdims$hgt), mean = fhgtmean, sd = fhgtsd)
hist(sim)

qqnorm(sim)
qqline(sim)
# Normal Distribution

# Exercise 3: 
qqnormsim(fdims$hgt)

# Exercise 4: 
# The normal probability plot for fdims$hgt
# looks similar to the plots created for the simulated data

# Exercise 5: Using the same technique, determine whether or not 
# female weights come from a normal distribution or not. If
# not, how would you describe the same of this distribution?
# NOTE: you may use a histogram to help you decide

# Histogram of weights of females
hist(fdims$wgt)

# Drawing the bell curve
hist(fdims$wgt, probability = TRUE, ylim = c(0, 0.06))
x = 40:110
y = dnorm(x = x, mean = mean(fdims$wgt), sd = sd(fdims$wgt))
lines(x = x, y = y, col = "blue")

# QQ Graphs
qqnorm(fdims$wgt)
qqline(fdims$wgt)

# Evaluating QQ Graphs
sim = rnorm(n = length(fdims$wgt), mean = fwgtmean, sd = fwgtsd)
hist(sim)

qqnorm(sim)
qqline(sim)

# Testing normal distribution
qqnormsim(fdims$hgt)

# Females weights do not closely follow a normal distribution and is
# instead right skewed since most of the data is to the left

# Exercise 6: 

hist(fdims$bii.di)
qqnorm(fdims$bii.di)
qqline(fdims$bii.di)
# Matches Plot B

hist(fdims$elb.di)
qqnorm(fdims$elb.di)
qqline(fdims$elb.di)
# Matches Plot C

hist(fdims$age)
qqnorm(fdims$age)
qqline(fdims$age)
# Matches Plot D

hist(fdims$che.de)
qqnorm(fdims$che.de)
qqline(fdims$che.de)
# Matches Plot A

# Exercise 7: Note that Plots C and D have a slight step-wise pattern.
# Why do you think this is the case?

# Plots C and D have slight step-wise patterns because there are many freqs
# with the same elbow diameter and age. In other words, there are many repeated
# values in both plots with creates a step-wise pattern

# Exercise 8: Make a normal probability plot for female knee diameter
# Is this variable normal, left or right skewed? Use a histogram to confirm

hist(fdims$kne.di, probability = TRUE)
x = 12:24
y = dnorm(x = x, mean = mean(fdims$kne.di), sd = sd(fdims$kne.di))
lines(x = x, y = y, col = "blue")

qqnorm(fdims$kne.di)
qqline(fdims$kne.di)

# This variable is right skewed because most of the data lies on the left
