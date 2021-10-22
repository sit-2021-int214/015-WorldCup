# Library
install.packages("lubridate")
install.packages("ggplot2")
library(dplyr)
library(stringr)
library(readr)
library(ggplot2)
library(lubridate)
#Dataset
superstore <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")

#Part 1: Explore the dataset 
# Library dplyr : dplyr provides functions that solve many challenges that arise when organizing tabular data
library(dplyr)
# Library lubridate : identify the order in which the year, month, and day appears in your dates.
install.packages("lubridate")
library(lubridate)
# Library ggplot2 : system for declaratively creating graphics
install.packages("ggplot2")
library(ggplot2)
# Dataset
superstore <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")
# Show Data
glimpse(superstore)

#Part2: Use function
superstore %>% select(Sales)

#Part3: Transform data with dplyr and finding insight the data
#3.1
superstore %>% count(Segment) %>% filter(Segment == "Consumer") %>% rename(total = n)
#3.2
superstore %>% select (`Customer Name`, Category) %>% group_by(`Customer Name`,Category) %>% filter(`Category` == "Technology") %>% distinct(`Customer Name`)
#3.3
superstore %>% group_by(`Customer ID`) %>% summarise(Sales = sum(Sales))
#3.4
superstore %>% mutate(day = day(dmy(`Order Date`)) , month = month(dmy(`Order Date`)) , year = year(dmy(`Order Date`))) %>% filter(day==11, month==11 , year==2017) %>% count() %>% rename(total = n)
#3.5
superstore %>% select(`Ship Date` , `Ship Mode`) %>% group_by(`Ship Mode`) %>% mutate(day = day(dmy(`Ship Date`)) , month = month(dmy(`Ship Date`)) , year = year(dmy(`Ship Date`))) %>% 
filter(day==11, month==11 , year==2017)
#3.6
city <- superstore %>% group_by(State) %>% summarise(TotalCity = n_distinct(City))

#Visualization
# Set data
count_ship_mode <-table(superstore$`Ship Mode`)
# Create graph
barplot(count_ship_mode)
barplot(count_ship_mode,main = "Number of Ship Mode", xlab = "Ship Mode", ylab = "Number of Ship Mode",) 

# Set data
superstore %>% select(`Order ID`) %>% filter(superstore$Sales > 10000)
# Create pie
pie(table(superstore %>% select(`Order ID`) %>% filter(superstore$Sales > 10000)))

#save as CSV to make dashboard
write.csv(superstore,"C:/Users/bammotth/Desktop/superstore.csv", row.names=FALSE)
