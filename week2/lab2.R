# ==============================================================================
# STAT 3011 Lab 3 - Week 2 Solution
# Date: Jan/29/2026
# ==============================================================================

# ==============================================================================
# Part 1: Starting to Explore and Understand Data
# ==============================================================================

# Run the following command to open the help file of iris for more information.
# Note that the unit of the numerical data in iris is centimeter.


# We can look at the complete data by running the following command.


# You can also look at the first few rows of data to get a sense of its content.


# ------------------------------------------------------------------------------
# Data Structure
# ------------------------------------------------------------------------------

# Data are often organized so that the rows are the individuals/units and 
# the columns are the variables (measurements or characteristics of the unit).

# How many iris flowers are included in the dataset?


# When you reference a variable in R code, make sure that you use exactly 
# the same name as appeared in the output of names( ). 
# Recall, R is case sensitive.


# ==============================================================================
# Part 2: Numerical Summaries of Data
# ==============================================================================

# The summary( ) function provides a summary for each variable in the dataset.


# What summary statistics are provided for the quantitative variables 
# (Sepal.Length, Sepal.Width, Petal.Length, and Petal.Width)?

# What summary statistics are provided for the categorical variable (Species)?

# ------------------------------------------------------------------------------
# 2.1: Measures of Center and Spread
# ------------------------------------------------------------------------------

# The "$" takes out the variable Sepal.Length from the data iris so that 
# we can apply functions to it directly.


# ------------------------------------------------------------------------------
# 2.2: Frequency Table for a Categorical Variable
# ------------------------------------------------------------------------------

# For categorical variables, the table( ) function tabulates its values and 
# produces the frequency table.

# ==============================================================================
# Part 3: Graphical Summaries of Data
# ==============================================================================

# ------------------------------------------------------------------------------
# 3.1: Histogram
# ------------------------------------------------------------------------------


# An important argument in the hist( ) is breaks, which specifies the desired 
# number of bins you want (it doesn't always give you exactly what you want). 
# Changing its value will make the bins wider or narrower. 
# Try the following two lines of code:

# If you don't specify the value of breaks, hist( ) uses an optimization 
# algorithm to determine the value of breaks.

# Is the distribution of sepal length left-skewed, right-skewed, 
# or roughly symmetric?

# ------------------------------------------------------------------------------
# Exercise:
# ------------------------------------------------------------------------------

# Produce a histogram for one of the other quantitative variables.

# Optional: To update the labels and the title in a plot:

# ------------------------------------------------------------------------------
# 3.2 Boxplot
# ------------------------------------------------------------------------------


# By default, the boxplot( ) function marks any data point that falls more than 
# 1.5×IQR above Q3 or more than 1.5×IQR below Q1 as an outlier. These points are 
# represented by open circles and the whiskers are only extended to values that 
# aren't considered to be outliers.


# For side-by-side boxplots, the syntax of the formula in the boxplot( ) is 
# numerical variable ~ group variable

# You can change the title and axis labels by adding the arguments main, xlab, 
# and ylab and set them to your desired names.

# Based on the side-by-side boxplot, which species of the iris flower has the 
# shortest sepal length in general?
# Setosa