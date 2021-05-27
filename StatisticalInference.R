# Download and Load the data
download.file("http://www.openintro.org/stat/data/ames.RData", destfile = "ames.RData")
load("ames.RData")

# Restrict data to a few variables
area = ames$Gr.Liv.Area
price = ames$SalePrice

# Summary and Histogram of Data
summary(area)
hist(area)

# Exercise 1: Describe this population distribution. Be sure to include a 
# visualization in your answer

# This distribution is right skewed as most of the data lies to the left

# Exercise 2: Set a seed
set.seed(420)
samp1 = sample(area, 50)

# Exercise 3: Describe the sample distribution. How does it compare to the
# population distribution? Be sure to include a visualization in your answer

hist(samp1)
# This distribution looks similar to the population distribution and is
# right skewed since most of the data lies to the left

mean(samp1)

# Exercise 4: Compare samp1 with another sample with the same size
samp2 = sample(area, 50)
mean(samp2)

# Samp1 Mean: 1486.46
# Samp2 Mean: 1454.14
# These means are very similar
# A sample size of 1000 would provide a more accurate estimate of the population
# mean compared to a lower sample size of 100

sample_mean50 = rep(0, 5000)
for (i in 1:5000) {
  samp = sample(area, 50)
  sample_mean50[i] = mean(samp)
}
hist(sample_mean50, breaks = 25)

# Exercise 5:
# There are 5000 elements in sample_means50. This is a normal distrubtion as the
# graph follows a bell curve with the peak or average at around 1500 units
# With a larger sample size, I expect the curve to be more shaped like a bell

# Exercise 6:
sample.means.small = rep(0, 100)
for (i in 1:100) {
  samp = sample(area, 50)
  sample.means.small[i] = mean(samp)
}
# There are 100 elements in sample.means.small. Each element represents the mean
# of a randomly selected sample of size 50

sample_means10 = rep(0, 5000)
sample_means100 = rep(0, 5000)
for (i in 1:5000) {
  samp = sample(area, 10)
  sample_means10[i] = mean(samp)
  samp = sample(area, 100)
  sample_means100[i] = mean(samp)
}

par(mfrow = c(3, 1))
xlimits = range(sample_means10)
hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_mean50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)

# As the sample size increases, the data becomes narrower and the
# frequencies of the mean becomes larger

# Exercise 8:
samp1 = sample(price, 50)
mean(samp1)
# Output: 176876.7

# Exercise 9:
sample_means50 = rep(0, 5000)
for (i in 1:5000) {
  samp = sample(price, 50)
  sample_means50[i] = mean(samp)
}
hist(sample_means50, breaks = 25)

mean(price)
# The mean of the whole population is 180796.1

mean(sample_means50)
# The mean home price is around 180904.4

# Exercise 10:
sample_means150 = rep(0, 5000)
for (i in 1:5000) {
  samp = sample(price, 150)
  sample_means150[i] = mean(samp)
}
hist(sample_means150, breaks = 25)

mean(sample_means150)
# The mean of the whole population is 180946.3

par(mfrow = c(2, 1))
xlimits = range(sample_means50)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means150, breaks = 20, xlim = xlimits)

# Exercise 11:
# Between the distribution from Exercise 9 and Exercise 10, the one from
# Exercise 10 has less spread because it is more narrow. If we wanted to make
# estimates closer to the true value, we would prefer a sample with a smaller
# spread
