# Library
library(dplyr)
library(readr)
library(stringr)
library(ggplot2)
install.packages("lubridate")
library(lubridate)
# Dataset
read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")
superStore <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")
glimpse(dataset)
View(dataset)

##1.)
max_cus <-
  superStore %>% select(`Customer ID` ,`Customer Name`) %>% group_by(`Customer ID`,`Customer Name`) %>% 
  filter(`Customer ID` == max(max_sales$`Customer ID`,na.rm=TRUE))
View(max_cus)

##2.)
DateSalelest <- superStore %>% group_by(`Order Date`) %>%  summarise(Total.sales = sum(Sales)) %>% filter(Total.sales < 5000)
View(DateSalelest)

##3.)
superStore %>% group_by(`Ship Mode`) %>% summarise(Total = sum(Sales))

##4.)
superStore %>%group_by(`Segment`) %>% summarise(Total = sum(Sales)) %>% filter(`Segment` == "Home Office") 

##5.)
superStore %>% select(`Order Date` , `Order ID`) %>% group_by(`Order ID`) %>% mutate(day = day(dmy(`Order Date`)) , month = month(dmy(`Order Date`)) , year = year(dmy(`Order Date`))) %>% 
  filter(day==08, month==12 , year==2018)

##6.)
superStore %>% select(`Customer ID`,`Customer Name`,Sales) %>% 
  filter(superStore$Sales == min(superStore$Sales))


#Visualization
# Set data
count_Region <-table(superStore$`Region`)
# Create graph
barplot(count_Region)
barplot(count_Region,main = "Number of Region", xlab = "Region", ylab = "Number of Region",) + geom_bar(color = count_Region)


# Create graph
superStore %>% ggplot(aes(x=`Category`,y=Sales))+geom_point() + ggtitle("sales in each Category")










