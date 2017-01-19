# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
# Hint: use the `paste()` function to produce the list
employees <- c(paste("Employee", 1:100))
print(employees)

# Create a vector of 100 random salaries for the year 2014
# Use the `runif()` function to pick a random number between 40000 and 50000
salaries.2014 <- runif(100, 40000, 50000)

# Create a vector of 100 salaries in 2015 that have increased from 2014 by some amount
# Hint: use `runif()` to add a random number to 2014's salaries. Starting from a
# _negative_ number so that salaries may decrease!
salaries.2015 <- salaries.2014 + runif(100,-1000,5000)

# Create a data.frame 'salaries' by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
table <- data.frame(employees, salaries.2014, salaries.2015, stringsAsFactors=FALSE)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
table["raise"] <- salaries.2015 - salaries.2014

# Create a column 'got.raise' that is TRUE if the person got a raise
table["got.raise"] <- salaries.2015 - salaries.2014 > 0

### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)

# What was the 2015 salary of employee 57
print((table$salaries.2015[57]))

# How many employees got a raise?
num.got.raise <- table$got.raise[table$got.raise == TRUE]
print(length(num.got.raise))

# What was the value of the highest raise?
max.raise <- table$raise[table$raise == max(table$raise)]
print(max.raise)

# What was the "name" of the employee who received the highest raise?
max.raise.name <- table$employees[table$raise == max(table$raise)]
print(max.raise.name)

# What was the largest decrease in salaries between the two years?
max.decrease <- table$raise[table$raise == min(table$raise)]
print(max.decrease)

# What was the name of the employee who recieved largest decrease in salary?
max.decrease.name <- table$employees[table$raise == min(table$raise)]
print(max.decrease.name)

# What was the average salary increase?
average.salary <- mean(table$raise)
print(average.salary)

### Bonus ###

# Write a .csv file of your salaries to your working directory
write.csv(table, file = "salaries.csv")

# For people who did not get a raise, how much money did they lose?
num.no.raise <- table$raise[table$got.raise == FALSE]
print(num.no.raise)

# Is that what you expected them to lose based on how you generated their salaries?
#wat
