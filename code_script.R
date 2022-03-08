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

