# ==============================================================================
# STAT 3011 Lab 3 solution
# Date 02/05/2026
# ==============================================================================

# ==============================================================================
# Part 1: Random Sampling in R
# ==============================================================================

# Suppose we want to obtain a random sample of five out of the 150 iris flowers 
# in the data iris. We give each iris flower an index, from 1 (the first row) 
# to 150 (the last row).

idx = sample(x=1:150, size = 5)
idx

# Each time you run the sample() function, it will produce a different set of 
# random numbers. To reproduce the same list of random numbers, you can set a 
# seed right before the sample() command. A seed can be any integer.

set.seed(3011)
idx = sample(x=1:150, size = 5)
idx

# ------------------------------------------------------------------------------
# The [ ] Operator
# ------------------------------------------------------------------------------

# At this point, we will introduce a very useful operator in R: [ ] (the bracket). 
# Applied to a dataset with multiple variables, the bracket operator allows you 
# to select a portion of the data (certain rows and/or certain columns).

# Before the comma = rows selected

iris[91, ]          # row 91, all columns
iris[c(1, 3, 5), ]  # rows 1, 3, 5, all columns
iris[2:10, ]        # rows 2 to 10, all columns

# After the comma = columns selected

iris[ ,4]           # all rows, column 4
iris[ ,c(2,4)]      # all rows, columns 2 and 4

# What does the following command give you?
iris[1:10, c(2,4)]  # rows 1 - 10 with columns 2 and 4

# ------------------------------------------------------------------------------
# Back to Sampling
# ------------------------------------------------------------------------------

# To get the sample data, we can use the [ ] operator to select the relevant rows.

iris[idx, ]

# If you just want the sample data for one variable/column:

iris$Sepal.Length[idx] # no comma needed since column is selected

# ------------------------------------------------------------------------------
# Comparing Population Parameters and Sample Statistics
# ------------------------------------------------------------------------------

# If we treat the 150 iris flowers in the iris data as the population, then the 
# population mean of petal length is 3.758 cm. 
mean(iris$Petal.Length)

# Let's see if the mean of the petal length for the flowers in the sample is 
# close to the population mean. This time, we will take a random sample of 20 flowers. 

idx20 = sample(x=1:150, size = 20)
sample20 = iris$Petal.Length[idx20]
mean(sample20)

# Is the mean of your sample close to the population mean? 
# Close, but not exactly the same as the population mean

# Exercise: now compare the population standard deviation of the petal length 
# to the sample standard deviation.
sd(iris$Petal.Length)
sd(iris$Petal.Length[idx20])

# ------------------------------------------------------------------------------
# Optional: Sampling With or Without Replacement
# ------------------------------------------------------------------------------

# There is another argument in sample() called replace. Depending on whether you 
# are sampling with replacement or not, you can set replace to either TRUE 
# (for sampling with replacement) or FALSE (for sampling without replacement).

# The (simple) random sampling method samples the population without replacement. 
# Once the 71st flower was selected, it cannot be selected again (since it was 
# not replaced). By default, replace = FALSE, so we may choose to omit it in 
# the code. The following two commands are equivalent.	
sample(x = 1:150, size = 5)
sample(x = 1:150, size = 5, replace = FALSE)

# Example: Generating five random numbers from the list of integers from 1 to 3 
# with replacement. 
sample(x = 1:3, size = 5, replace = TRUE)

# The individuals can be chosen repeatedly. 

# Example: We can use sampling with replacement to simulate the coin flips of 
# a fair coin. Suppose 0 represents the Tail and 1 represents the Head. 
# Here are the results of 100 coin flips. 
flips = sample(x = c(0,1), size = 100, replace = TRUE)
flips

# Among these 100 flips, 51 were heads. 
sum(flips)    # number of Heads
mean(flips)   # proportion of Heads

# ==============================================================================
# Part 2: Data Importation
# ==============================================================================

# ------------------------------------------------------------------------------
# Two Ways of Importing a Dataset
# ------------------------------------------------------------------------------

# 1. Using file.choose()
read1 <- read.csv(file.choose())
# 2. Using a URL
Getting2NoU <- read.csv(
  "https://raw.githubusercontent.com/Talha-Hamza/STAT3011-015-S26/refs/heads/main/Getting2NoU_S2026.csv",
  header = TRUE)

# Missing values in R are denoted as NA. When a variable contains missing values,
# R returns NA for many summary statistics.

mean(Getting2NoU$Height)

# When calculating statistics with missing values, use na.rm = TRUE to ignore NA values.
mean(Getting2NoU$Height, na.rm = TRUE)

