# Library
library(dplyr)
library(readr)
library(data.table)
library(ggplot2)
library(janitor)

# Dataset
store <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")

# View Dataset
glimpse(store)
View(store)

# Clean Dataset
store <- clean_names(store)
colnames(store)

#1
store  %>% 
  select(product_name, product_id, state) %>% 
  filter((store$product_name %like% 'Bush'),(store$state == "New York")) 
 
#2 

store$customer_name <- as.factor(store$customer_name)
summary(store$customer_name)

store %>%
  select(customer_name, product_name) %>%
  filter(customer_name == 'William Brown')

#3
store %>% count(category)

category_city <- store %>% 
  select(category, product_name, ship_mode) %>%
  filter(category == 'Office Supplies', ship_mode == 'Same Day') %>%
  arrange(product_name) 
glimpse(category_city)
View(category_city)

#4
category_sales <- aggregate(store$sales, list(store$category), FUN=max)
category_sales <- category_sales %>% rename(category=Group.1,Highest_Sales = x)
category_sales %>% filter(category_sales$Highest_Sales == max(category_sales$Highest_Sales))

#5
mean(store$sales)
store %>% select(category, sales, product_name) %>% 
  filter(store$sales < mean(store$sales))

#6
store %>% count(ship_mode)
store %>% select(product_name, ship_mode) %>%
  filter(ship_mode == 'First Class')

#Visualization
#1
region_plot1 <- store %>% filter(sales >= 5000) %>% ggplot(aes(x=region,y=sales))+
  geom_point(aes(color=region))

region_plot1+ggtitle("Sales of each region that sales more than 5000")

#2
sub_category_plot <- ggplot(store,aes(x=sub_category)) + geom_bar()

sub_category_plot + ggtitle("Number of Sub category that purchased") +
  xlab("Sub category") + ylab("Amount")

#save as CSV to make dashboard
write.csv(store,"/Users/dreamqtk/Documents/superstore.csv", row.names=FALSE)

