# Now it is time to create your own data frame using the tools we have learned this week.
# First, resave this script as: your last name_Week1_Assignment
  # e.g. mine would be Wilson_Week1_Assignemnt


# Create 3 numeric vectors and 2 character vectors that are each 15 values in length with the following structures:
  # One character vector with all unique values
  # One character vector with exactly 3 unique values
  # One numeric vector with all unique values
  # One numeric vector with some repeated values (number of your choosing)
  # One numeric vector with some decimal values (of your choosing)

a <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r")
as.character(a)
b <- c("a","a","a","a","e","e","e","e","e","e","r","r","r","r","r","r","r","r")
c <- c(7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24)
d <- c(3,4,5,6,7,7,7,7,7,7,9,9,9,9,9,9,9,9)
e <- c(3,4,5,6,7,8,9,10,11.5,3.6,5.8,5.9,2.6,1.1,2.7,2.2,3.3,5.1)

# Bind the vectors into a single data frame, rename the columns, and make the character vector with unique values the row names.

data <- cbind(a,b,c,d,e)
df <- as.data.frame(data)
colnames(df) <- c("Bring","Cheetahs","Back","To","Midwest")
row.names(df) <- df$Bring

# Remove the character vector with unique values from the data frame.

df[,-1]

# Add 1 row with unique numeric values to the data frame.

df[,3]

# Export the data frame as a .csv file 

write.csv(df, file = "HillWeek1.csv")

# Generate summary statistics of your data frame and copy them as text into your script under a new section heading.

# Push your script and your .csv file to GitHub in a new "Week1" folder.

