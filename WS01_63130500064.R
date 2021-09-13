library(readr)
sat_score <- read.csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/SAT_original.csv")
View(sat_score)


#How many observation of this dataset (before cleaning) ?
sat_score %>% count()


#Are there duplicate data sets ? (If have duplicate data, list the data that duplicate)

#How many distinct school in this dataset ? (Know after drop duplicate data)

#What is min, max, average, quartile of each part in SAT ?

#What is min, max, average, quartile of total score in SAT ?

#Which school is get highest SAT score ?