install.packages("stringr")

# Library
library(readr)
library(lubridate)
library(ggplot2)
library(dplyr)
library(stringr)

# Dataset
superstore <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")
View(superstore)
glimpse(superstore)

# 2
superstore %>% mutate(year=year(dmy(`Order Date`))) %>% group_by(year) %>% count(year) %>% rename(Total = n)

# 5
superstore %>% group_by(`Ship Mode`) %>% summarise(Total = sum(Sales)) %>% filter(`Ship Mode` == "First Class")

# 3
superstore %>% group_by(Region) %>% summarise(sum(Sales)) %>% rename(Total = `sum(Sales)`)

# 4
superstore %>% group_by(`Customer Name`) %>%  summarise(Total = sum(Sales)) %>% filter(Total < 100)

# 1
superstore %>% select (`Customer Name`, `Customer ID`) %>% group_by(`Customer Name`, `Customer ID`) %>% 
  filter(`Customer ID` == "BH-11710") %>% count() %>% rename(Total = n)

# 6
superstore %>% summarise(countCustomer = n_distinct(`Customer Name`))

# ggplot2
superstore %>% ggplot(aes(x=Region,y=Sales))+geom_point() + ggtitle("sales in each region")

countSubCat <-table(superstore$`Sub-Category`)
barplot(countSubCat)
barplot(countSubCat,main = "Number of Sub-Category", xlab = "Sub-Category", ylab = "Number of Category",)




