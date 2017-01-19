# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")


# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
frame <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
column.names <- paste(colnames(frame), collapse=", ")
column.names

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!

# What are the row names of your dataframe?
row.names <- paste(rownames(frame), collapse=", ")
row.names

# Create a column "category" that is equal to your rownames
category <- rownames(frame)
frame["category"] <- category

# How much money was spent on personal care in 1940?
personal.care.spendatures.1940 <- frame$X1940[frame$category == "Personal Care"] 
personal.care.spendatures.1940

# How much money was spent on Food and Tobacco in 1960?
tobacco.spendatures.1960 <- frame$X1960[frame$category == "Food and Tobacco"] 
tobacco.spendatures.1960

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
highest.1960 <- frame$X1960[frame$X1960 == max(frame$X1960)]
highest.1960

# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
DetectHighest <- function(xyear) {
  year <- paste0("X" , xyear)
  return.value <- frame$category[frame[year] == max(frame[year])]
  return(return.value)
}

# Using your function, determine the highest spending category of each year
View(frame)
highest.1940 <- DetectHighest("1940")
highest.1940
highest.1945 <- DetectHighest("1945")
highest.1945
highest.1950 <- DetectHighest("1950")
highest.1950
highest.1955 <- DetectHighest("1955")
highest.1955
highest.1960 <- DetectHighest("1960")
highest.1960
