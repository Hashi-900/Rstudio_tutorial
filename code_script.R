library(tidyverse)
##Basic data types in R
#R works with numerous data types. Some of the most basic types to get started are:
# Decimal values like 4.5 are called numerics.
#Whole numbers like 4 are called integers. Integers are also numerics.
#Boolean values (TRUE or FALSE) are called logical.
#Text (or string) values are called characters.

## Creating Vectors.
##Vectors are one-dimension arrays that can hold numeric data, character data, or logical data.
##In other words, a vector is a simple tool to store data. 
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <- c(TRUE, FALSE, TRUE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c(-24, -50, 100, -350, 10)

## Naming Vector
#As a data analyst, it is important to have a clear view on the data that you are using. 
#Understanding what each element refers to is therefore essential.
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

## you can also a chieve the same result of naming a vector with more efficienct way.
# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <- days_vector

# You can do mathematical operations on a numeric vector
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# Print out total_vector
total_vector

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector + roulette_vector

total_daily
# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
total_week

## you can make comparisons between vectors

total_poker > total_roulette

## Selecting a vector

poker_vector

poker_vector[3:4]
poker_vector[,]

poker_vector['Tuesday']

## Selection by comparisons

loss_days <- poker_vector < 0

poker_vector[loss_days]

## Matrix
#In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. 
#Since you are only working with rows and columns, a matrix is called two-dimensional.

#In the matrix() function:

#The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
#The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
#The third argument nrow indicates that the matrix should have three rows.

matrix(1:9, nrow = 3, byrow=TRUE)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow=3, byrow=TRUE)

star_wars_matrix

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
print(star_wars_matrix)

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

all_wars_matrix_two <- rbind(star_wars_matrix, worldwide_vector)

# Total revenue for US and non-US
colSums(all_wars_matrix)
rowSums(all_wars_matrix)

#Selection of matrix elements
#Similar to vectors, you can use the square brackets [ ] to select one or multiple elements from a matrix. 
#Whereas vectors have one dimension, matrices have two dimensions. You should therefore use a comma to separate the rows you want to select from the columns. For example:
  
  #my_matrix[1,2] selects the element at the first row and second column.
#my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.
#If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:
  
  #my_matrix[,1] selects all elements of the first column.
#my_matrix[1,] selects all elements of the first row.

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[ ,2]

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2, 2]

# Average non-US revenue for first two movies
mean(non_us_some)

# Estimate the visitors
visitors <- all_wars_matrix /5

# Print the estimate to the console
visitors

ticket_price <- c(6.5, 5.6, 7.8)

visitors <- all_wars_matrix/ticket_price

us_visitors <- visitors[ ,1]
us_visitors

visitors[2, ]

# Factors:
#The term factor refers to a statistical data type used to store categorical variables. The difference between a categorical variable and a continuous variable is that a categorical variable can belong to a limited number of categories. 
#A continuous variable, on the other hand, can correspond to an infinite number of values.

theory <- 'factors'
# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)

# Print out factor_sex_vector
factor_sex_vector

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c('Female', 'Male')

factor_survey_vector

# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

# Male
male <- factor_survey_vector[1]

# Female
female <- factor_survey_vector[2]

# Battle of the sexes: Male 'larger' than female?
male > female

# Create speed_vector
speed_vector <- c('medium', 'slow', 'slow', 'medium', 'fast')

# Convert speed_vector to ordered factor vector
factor_speed_vector <-factor(speed_vector, ordered=TRUE, 
                             levels=c('slow', 'medium', 'fast'))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5

## DataFrame

#You may remember from the chapter about matrices that all the elements that you put in a matrix should be of the same type. 
#Back then, your dataset on Star Wars only contained numeric elements.

#When doing a market research survey, however, you often have questions such as:
  
#  'Are you married?' or 'yes/no' questions (logical)
# 'How old are you?' (numeric)
#'What is your opinion on this product?' or other 'open-ended' questions (character)

mtcars

head(mtcars)
tail(mtcars)

str(mtcars)

# Creating Dataframe from scratch.
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
str(planets_df)

#selection of dataframe elements
# Print out diameter of Mercury (row 1, column 3)
planets_df[1, 3]

# Print out data for Mars (entire fourth row)
planets_df[4, ]


# Select first 5 values of diameter column
planets_df[1:5, 'diameter']


# Select first 5 values of diameter column
planets_df[1:5, 'diameter']

# Select planets with diameter < 1
subset(planets_df, diameter < 1)

# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions, ]

## List
# why would we need list?
#Vectors (one dimensional array): can hold numeric, character or logical values. The elements in a vector all have the same data type.
#Matrices (two dimensional array): can hold numeric, character or logical values. The elements in a matrix all have the same data type.
#Data frames (two-dimensional objects): can hold numeric, character or logical values. Within a column all elements have the same data type, but different columns can be of different data type.

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)

print(my_list)

my_list[[2]]

my_list[[3]][2]


### Intermediate courese for R programming language
# Comparison of logicals
TRUE == FALSE

# Comparison of numerics
-6 * 14 != 17 - 101

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
TRUE == 1

# Comparison of numerics
-6*5+2 >= -10+1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook

views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14

# How often does facebook equal or exceed linkedin times two?
sum(facebook >= linkedin * 2)

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last<5 | last>10

# Is last between 15 (exclusive) and 20 (inclusive)?
last>15 & last<=20

# Is last between 0 and 5 or between 10 and 15?
(last > 0 & last < 5) | (last > 10 & last < 15)

linkedin>10 & facebook<10

# When were one or both visited at least 12 times?
linkedin>=12 | facebook>=12

# When is views between 11 (exclusive) and 14 (inclusive)?
views>11 & views<=14

###Reverse The Result: !
x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))

# Select the second column, named day2, from li_df: second
mpg <- mtcars$mpg

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- mpg > 25 | mpg < 5

# Count the number of TRUEs in extremes
sum(extremes)

# Solve it with a one-liner
sum(mtcars$qsec > 25 | mtcars$qsec < 5)


## Control structure of R programming language
# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if(num_views > 15){
  print('You are popular!')
}

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print('Showing Facebook information')
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print('Your number of views is average')
} else {
  print("Try to be more visible!")
}

li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console
print(sms)

# While loop

ctr <- 1

while(ctr <= 8){
  print(paste('ctr is equal to', ctr))
  ctr <- ctr + 1
}

while(ctr <= 8){
  if(ctr %% 7 ==0) {
    break
  }
  print(paste('ctr is equal to', ctr))
  ctr <- ctr + 1
}

# Initialize the speed variable
speed <- 64
# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed = speed - 7
}
# Print out the speed variable
speed

# Extend/adapt the while loop
speed <- 68
while (speed > 30) {
  print(paste("Your speed is", speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

speed <- 88
while (speed > 30) {
  print(paste("Your speed is", speed))
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

i <- 1
# Code the while loop
while (i <= 10) {
  print(i * 3)
  if (i * 3 %% 8 == 0) {
    break
  }
  i <- i + 1
}

cities <- c('Mogadishu', 'Kismayo', 'Mekka', 'Antalya', 'Istanbul','Toronto', 'Seoul')


for(city in cities){
  print(city)
}

for(city in cities){
  if(nchar(city) == 8){
    break
  }
  print(city)
}

for(city in cities){
  if(nchar(city) == 8){
    next
  }
  print(city)
}

for(i in 1:length(cities)){
  print(paste(cities[i], 'is on position', i, 'in the cities vector'))
}

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Loop version 1
for (view in linkedin) {
  print(view)
}
# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}

# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1

for(i in nyc){
  print(i)
}


# Loop version 2
for(j in 1:length(nyc)){
  print(nyc[[j]])
}

# The tic-tac-toe matrix ttt has already been defined for you
ttt <- matrix(c("O", "NA", "X", "NA", "O", "O", "X", "NA", "X"), 
              nrow = 3, 
              byrow = TRUE)
# Define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
# Extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  # Add if statement with break
  if(li > 16){
    print("This is ridiculous, I'm outta here!")
    break
  }
  # Add if statement with next
  if(li < 5){
    print("This is too embarrassing!")
    next
  }
  print(li)
}

# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]
# Initialize rcount
rcount <- 0
# Finish the for loop
for (char in chars) {
  if(char == "r") {
    rcount = rcount + 1
  }
  if(char == "u") {
    break
  }
}
# Print out rcount
rcount

# Introduction to functions in R

args(var)
?var
# Consult the documentation on the mean() function
?mean
help(mean)

# Inspect the arguments of the mean() function
args(mean)

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

### Use a function ###
# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)
# Inspect avg_li and avg_fb
avg_li
avg_fb

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2)

# Inspect both new variables
avg_sum
avg_sum_trimmed

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)
## [1] NA
# Advanced average of linkedin
mean(linkedin, na.rm = TRUE)

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(linkedin - facebook), na.rm = TRUE)

# Create a function pow_two()
pow_two <- function(x) {
  x ** 2
}

# Use the function
pow_two(12)
## [1] 144
# Create a function sum_abs()
sum_abs <- function(a, b) {
  abs(a) + abs(b)  
}

# Use the function
sum_abs(-2, 3)
# Define the function hello()
hello <- function() {
  print("Hi there!")
  return(TRUE)
}

# Call the function hello()
hello()# Define the function hello()

# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ** 2
  if (print_info == TRUE){
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
    
  } else {
    print("Try to be more visible!")
    return(0)
    
  }
}

# Call the interpret function twice
interpret(linkedin)
interpret(facebook[2])

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0
  
  for (v in views) {
    count <- count + interpret(v)
  }
  
  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

#apply functions

nyc <- list(pop=12546546,
            broughts =c('Manhattan', 'Bronx', 'Brooklyn', 'Queens', 'Staten island'),
            capital=FALSE)

for(info in nyc){
  print(class(info))
}
lapply(nyc, class)

num_char <- c()

for(i in 1:length(cities)){
  num_char[i] <- nchar(cities[i])
}

lapply(cities, nchar)

unlist(lapply(cities, nchar))

# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year
split_math <- strsplit(pioneers, split = ":")

# Convert to lowercase strings: split_low
split_low <- lapply(split_math, tolower)

# Take a look at the structure of split_low
str(split_low)

# Write function select_first()
select_first <- function(x) {
  x[1]
}

# Apply select_first() over split_low: names
names <-lapply(split_low, select_first)

names
# Write function select_second()
select_second <- function(x){
  x[2]
}



# Apply select_second() over split_low: years
years <-lapply(split_low, select_second)
years


data_df <- tibble(names =c('hashi', 'ahmed', 'hafsa', 'zahra', 'aishe'),
                  years= c(1988, 1999, 2001, 2004, 2005))

lapply(names(data_df), nchar)

sapply(cities, nchar)

first_last <- function(name){
  name =gsub(" ", "", name)
  letters <- strsplit(name, split="")[[1]]
  c(first=min(letters), last=max(letters))
}

sapply(cities, first_last)

# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
  c(min = min(x), max = max(x))
}

lapply(linkedin, extremes)
sapply(linkedin, extremes)

temp <- list(c(2, 3, 5),c(4,6,7,8), c(-1, 0, -3, -5), c(2,5))

# Definition of basics()
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}

# Apply basics() over temp using vapply()
vapply(temp, basics, numeric(3))


# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))

li_list <- list(
  log=TRUE,
  ch = "Hello",
  int_vec = sort(rep(seq(1, 12, by=0.98), times=2))
)

str(li_list)

is.list(li_list)

str(append(li_list, rev(li_list)))

# The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

# Sum of absolute rounded values of errors
sum(abs(round(errors)))

# The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- unlist(linkedin)
fb_vec <- unlist(facebook)

# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec, fb_vec)

# Sort social_vec
sort(social_vec, decreasing = TRUE)

rep(seq(1, 7, by = 2), times = 7)

# Create first sequence: seq1
seq1 <- seq(1, 500, by=3)

# Create second sequence: seq2
seq2 <- seq(1200, 900, by=-7)

# Calculate total sum of the sequences
sum(seq1)+ sum(seq2)

## reg functions

animal <- c('cat', 'graffe', 'elephant', 'camel', 'cow', 'goat', 'empala', 'ante')

grepl(pattern = 'a', x=animal)

# if we want strings that start with a then we can cater metacarate here.
grepl(pattern = '^a', x=animal)

# if we waant the end of the word
grepl(pattern = 'a$', x=animal)

# grap function  returns the indeces of the elements of x that yeild a match.
grep(pattern = 'a', x=animal)


sub(pattern = 'w', replacement = 'ee', x=animal)

data_df <-gsub(pattern = "\\[.*?\\]", replacement = "", x=names(data_df))

gsub(pattern = 'a', replacement = 'o', x=animal)

data_df <- tibble(name = c('shi', 'ali', 'fidi', 'kie'), `2000[2000]`=c(5,6,7,7),
                                 `2001[2002]` = c(5,6,7,8))

p <-sub("\\[.*", "", names(data_df))

names(data_df) <- paste0('v', 1:ncol(data_df))

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl(pattern='edu', x=emails)

# Use grep() to match for "edu", save result to hits
hits <- grep(pattern = 'edu', x=emails)

# Subset emails using hits
emails[hits]

# Use grepl() to match for .edu addresses more robustly
grepl(pattern = '@.*\\.edu$', x=emails)

# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep(pattern='@.*\\.edu$', x=emails)

# Subset emails using hits
emails[hits]


# Use sub() to convert the email domains to datacamp.edu
sub(pattern='@.*\\.edu$', replacement='@datacamp.edu', x=emails)


#Date and Times in R programming

today <- Sys.Date()
today

class(today)

now <- Sys.time()
now
class(now)

#creating data object

my_data <- as.Date("2006-05-23")

my_data
class(my_data)

my_data_two <- as.Date("2018-26-07", format="%Y-%d-%m")

my_data_two

my_data + 2

my_data_two - my_data

# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2)
date3 <- as.Date(str3, format = "%d/%B/%Y")

# Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")

## TidyVerse Course
library(gapminder)

gapminder

gapminder %>% 
  filter(year==2002)

gapminder %>% 
  filter(country== 'Somalia')

gapminder %>% 
  filter(year == 2002, country=='Somalia')

gapminder %>% 
  arrange(gdpPercap)

gapminder %>% 
  arrange(desc(gdpPercap))

gapminder %>% 
  filter(year == 2002) %>% 
  arrange(desc(gdpPercap))

gapminder %>% 
  mutate(pop = pop/1000000)

gapminder %>% 
  mutate(gdp= gdpPercap * pop) %>% 
  filter(year ==2002) %>% 
  arrange(desc(gdp))

gap_2002 <- gapminder %>% 
  filter(year == 2002)

gap_2002

gap_2002 %>% 
  ggplot(aes(gdpPercap, lifeExp)) + geom_point() +
  scale_x_log10()

gap_2002 %>% 
  ggplot(aes(gdpPercap, lifeExp, color=continent, size=pop)) + geom_point() +
  scale_x_log10() + theme_minimal()

gap_2002 %>% 
  ggplot(aes(gdpPercap, lifeExp, size=pop)) + geom_point() +
  scale_x_log10() + facet_wrap(~continent) +
  theme_minimal() 

gapminder %>% 
ggplot(aes(gdpPercap, lifeExp, color=continent,size=pop)) + geom_point() +
  scale_x_log10() + facet_wrap(~year) +
  theme_minimal() 

gapminder %>% 
  filter(year == 2002) %>%
  group_by(continent) %>% 
  summarise(mean_lifeex=mean(lifeExp),
            total_pop=sum(pop))


by_year_continent <- gapminder %>% 
  group_by(year, continent) %>% 
  summarise(mean_lifeex=mean(lifeExp),
            total_pop=sum(pop))

ggplot(by_year_continent, aes(year, mean_lifeex, color=continent)) + 
  geom_line()


gapminder %>% 
  group_by(year) %>% 
  summarise(meanGdpPercap = median(lifeExp)) %>% 
  ggplot(aes(year, meanGdpPercap)) + geom_line() +
  expand_limits(y=0)

gapminder %>% 
  filter(year == 2002) %>% 
  group_by(continent) %>% 
  summarise(meanLifeExp = mean(lifeExp)) %>% 
  ggplot(aes(continent, meanLifeExp)) + geom_col()


gap_2002 %>% 
  ggplot(aes(lifeExp)) + geom_histogram() + scale_x_log10()


gap_2002 %>% 
  ggplot(aes(continent, lifeExp)) + geom_boxplot()
