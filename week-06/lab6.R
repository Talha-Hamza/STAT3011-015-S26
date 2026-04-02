# ==============================================================================
# STAT 3011 Week 6 solution
# Date 02/26/2026
# ==============================================================================

# ==============================================================================
# Part 1: Binomial Distribution in R
# ==============================================================================

# We will use dbinom() and pbinom() to find probabilities of a binomial distribution.

# ------------------------------------------------------------------------------
# Exercise 1: 
# ------------------------------------------------------------------------------

# Suppose 77% of Americans own smart phones. 
# Find the probability that exactly 12 of 20 randomly sampled Americans own smart phones. 
# 
# Let X be the number of sampled Americans who own smart phones. 
# ⇒ X ~ Bin(20, 0.77). We want to solve P(X = 12). 
dbinom(x=12, size=20, prob=0.77) #0.04285273

# ------------------------------------------------------------------------------
# Exercise 2:
# ------------------------------------------------------------------------------
# Suppose an unprepared student guesses at the 3 multiple choice questions in the quiz. 
# Each question has 4 options. 
# What is the probability that the student guesses exactly one question correctly?
#   
#   Let Y be the number of questions the student guesses correctly.
# ⇒ Y ~ Bin(3, 0.25). We want to solve P(Y = 1).
dbinom(x=1, size=3, prob=0.25) # 0.421875

# ------------------------------------------------------------------------------
# Exercise 3:
# ------------------------------------------------------------------------------

# Find the probability that the unprepared student gets at least one question wrong. 
# Y ~ Bin(3, 0.25). We want to solve P(Y ≤ 2).
pbinom(2, size=3,prob=0.25) # 0.984375

# ------------------------------------------------------------------------------
# Exercise 4:
# ------------------------------------------------------------------------------
# Find the probability that less than 10 sampled Americans own smart phones. 
# ⇒ X ~ Bin(20, 0.77). We want to solve P(X < 10). 
# P(X < 10) is equivalent to P(X ≤ 9)
pbinom(9, size=20, prob=0.77) # 0.001937188

# ------------------------------------------------------------------------------
# Exercise 5:
# ------------------------------------------------------------------------------
# Find the probability that more than 10 sampled Americans own smart phones. 
# ⇒ X ~ Bin(20, 0.77). We want to solve P(X > 10). 
1- pbinom(10, size=20, prob=0.77)

pbinom(10, size=20, prob=0.77, lower.tail=FALSE)
