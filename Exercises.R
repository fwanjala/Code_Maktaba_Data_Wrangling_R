#------------------------------------------------------------------
# Code Maktaba R exercises: Data Wrangling
# Date : 20th July 2019
# Author :  Fridah Wanjala
#------------------------------------------------------------------

#----------------------------
# 0. Housekeeping
#----------------------------
# Load packages
library("dplyr")
library("purrr")
require("readxl")

# Import the data
bank_df <- read_excel()

#----------------------------
# 1. First Exercise
#----------------------------
# 1. Using the `Response` column, select all rows where the response is `Yes`
yes <- bank_df %>%
  filter(Response == "Yes")

# 2. Filter customers who are employed (`EmploymentStatus` = `Employed`) with an Income (`Income`) between 40,000 and 50,000
df <- bank_df %>%
  filter(EmploymentStatus == "Employed", between(Income, 20000, 30000))

# 3. Select all columns that start with an `e`
cols <- bank_df %>%
  select(starts_with("E"))

#----------------------------
# 2. Second Exercise
#----------------------------
# 1. Create a new variable `Income_category` using the following protocol:
#   Income = 0 "No Income"
#   Income = between 1 and 50,000 "1 to 50000"
#   Income > 50000 "> 50000"
#   HINT :  Use nested `ifelse`

#----------------------------
# 3. Third Exercise
#----------------------------
# 1. Calaculate a row sum using the mtcars dataset


# 2. Write a loop that calculates the mean, median and standard deviation of the following numeric variables (Income, Total Claim Amount, Customer Lifetime Value) and saves the 3 outputs in a list. Hint .  Use the `pull` function from the `dplyr` package to extract the variables.


# 3. Below is a function that takes in a variable name and ouputs its data type. Use `lapply` or `map` to apply function to all the column names in the marketing dataset. First run in function within your R workspace.
# classes <- function(x){
#   return(typeof(bank_df %>% pull(x)))
# }


