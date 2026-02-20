# ==============================================================================
# STAT 3011 Lab 4 solution
# Date 02/16/2026
# ==============================================================================

# ==============================================================================
# Part 1: Obtain the Probability
# ==============================================================================

# We will use the pnorm( ) function to find probabilities of a normal distribution. 
# “p” stands for probability and “norm” stands for the normal distribution. 

# ------------------------------------------------------------------------------
# Exercise 1: 
# ------------------------------------------------------------------------------

# Suppose X ~ N(21, 2) where 21 is the mean and 2 is the standard deviation. 
# What is P(X < 19)? 

pnorm(19, mean = 21, sd = 2) # 0.1586553

# If you want the upper tail instead, for example, P(X > 19)
1-pnorm(19, mean = 21, sd = 2) # 0.8413447
# OR
pnorm(19, mean = 21, sd = 2, lower.tail = FALSE)


# ------------------------------------------------------------------------------
# Exercise 2: 
# ------------------------------------------------------------------------------
# What is P(19 < X < 25)? Recall that X ~ N(21, 2).

pnorm(25, mean = 21, sd = 2) - pnorm(19, mean = 21, sd = 2) # 0.8185946

# ------------------------------------------------------------------------------
# Exercise 3: 
# ------------------------------------------------------------------------------
# Let Z ~ N(0, 1). What is P(Z < 1.55)?
pnorm(1.55) # 0.9394292

# ------------------------------------------------------------------------------
# Exercise 4: 
# ------------------------------------------------------------------------------
# What is P(Z > -0.97)? Recall that Z ~ N(0, 1)

pnorm(-0.96, lower.tail = FALSE) # 0.8314724
# OR
1 - pnorm(-0.96)

# ------------------------------------------------------------------------------
# Exercise 5: 
# ------------------------------------------------------------------------------
# Solve P(X < 19) again. This time, use N(0,1). Recall that X ~ N(21, 2).
z = (19 - 21)/2
pnorm(z) # 0.1586553

# ==============================================================================
# Part 2:  Obtain the Cutoff Value
# ==============================================================================

# ------------------------------------------------------------------------------
# Exercise 6: 
# ------------------------------------------------------------------------------
# What is the 60th percentile of the distribution of X? Recall that X ~ N(21, 2).

qnorm(0.6, mean=21, sd = 2) # 21.50669

# ------------------------------------------------------------------------------
# Exercise 7: 
# ------------------------------------------------------------------------------
# What is x so that P(X>x)=0.4? Recall that X ~ N(21, 2).
qnorm(0.4, mean = 21, sd = 2, lower.tail = FALSE) # 21.50669

# ==============================================================================
# Part 3: Assessing Normality
# ==============================================================================

Heights <- read.csv(file.choose())

# Using the Histogram
hist(Heights$mheight, freq = FALSE)

m_mean <- mean(Heights$mheight, na.rm = TRUE)
m_sd   <- sd(Heights$mheight, na.rm = TRUE)

curve(dnorm(x, m_mean, m_sd),
      add = TRUE,
      col = "red",
      lwd = 2)


# Using the Normal QQ Plot
qqnorm(Heights$mheight)
qqline(Heights$mheight, col="red", lwd=2)

# ------------------------------------------------------------------------------
# Optional: Generate Data from Normal Distribution
# ------------------------------------------------------------------------------

x100 = rnorm(n = 100, mean = 65, sd = 3.5)

# Seed setting
set.seed(3011)
x5 = rnorm(5, mean = 65, sd = 3.5)
x5

# Examining Normality
x1000 = rnorm(n = 1000, mean = 65, sd = 3.5)
hist(x1000)

qqnorm(x100, main="for n=100")
qqline(x100, col="red", lwd=2)

qqnorm(x1000, main="for n=1000")
qqline(x1000, col="green", lwd=2)
