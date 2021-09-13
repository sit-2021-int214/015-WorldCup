# Student_ID = 63130500064

# Step 0
# Library
library(readr)
library(assertive)
library(stringr)

# Dataset
sat_score <- read.csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/SAT_original.csv")
View(sat_score)


#How many observation of this dataset (before cleaning) ?
sat_score %>% count()


#Are there duplicate data sets ? (If have duplicate data, list the data that duplicate)

#How many distinct school in this dataset ? (Know after drop duplicate data)

#What is min, max, average, quartile of each part in SAT ?

#What is min, max, average, quartile of total score in SAT ?

#Which school is get highest SAT score ?

# USEFUL FUNCTION (After finished please remove it) -------------------------
## Stat
sum()
min()
mean()
max()

## Explore
head()      # See 6 observation (rows)
str()       # Structure of object
summary()

## dplyr package
glimpse()
select()
filter()
arrange()
mutate()
group_by()
summarise()
count()

## Cleaning
as.vector()
as.numeric()
na.omit()
is.na()
replace()
distinct()
duplicated()

#assertive package
assert_is_numeric()
assert_all_are_in_closed_range()