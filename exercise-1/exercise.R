# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawk.socres <- c(1,2,4,1,17,12,21)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
seahawk.poinst.againts <- c(4,3,5,7,21,12,14)

# Combine your two vectors into a dataframe
seahawks.frame <- data.frame(seahawk.scores, seahawk.poinst.againts)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
seahawks.frame["diff"] <- seahawk.socres - seahawk.poinst.againts

# Create a new column "won" which is TRUE if the Seahawks won
seahawks.frame["won"] <-  (seahawk.socres - seahawk.poinst.againts) > 0

# Create a vector of the opponent names corresponding to the games played
opponent.names <- c("please", "let", "me", "go", "home", "right", "now")

# Assign your dataframe rownames of their opponents
rownames(seahawks.frame) <- opponent.names

# View your data frame to see how it has changed!
view(seahawks.frame)