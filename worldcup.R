#library
library(dplyr)
library(stringr)
library(readr)

#import_data
worldcup <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/015-WorldCup/master/WorldCupMatches.csv")
View(worldcup)

#clean_data
worldcup$Away.Team.Name <- worldcup$Away.Team.Name %>% str_remove('rn">')
worldcup$Home.Team.Name <- worldcup$Home.Team.Name %>% str_remove('rn">')
worldcup$Stadium <- worldcup$Stadium %>% str_remove('¿½') %>% str_remove('¿½') %>% str_remove('??????') %>% str_remove('???') 
worldcup$City <- worldcup$City %>% str_remove('¿½') %>% str_remove('¿½') %>% str_remove('??????') %>% str_remove('???') 
worldcup$Referee <- worldcup$Referee %>% str_remove('¿½') %>% str_remove('¿½') %>% str_remove('??????') %>% str_remove('???') 
worldcup$Assistant.1 <- worldcup$Assistant.1 %>% str_remove('¿½') %>% str_remove('¿½') %>% str_remove('??????') %>% str_remove('???') 
worldcup$Assistant.2 <- worldcup$Assistant.2 %>% str_remove('¿½') %>% str_remove('¿½') %>% str_remove('??????') %>% str_remove('???')
View(worldcup)

#save as CSV
write.csv(worldcup,"C:/Users/bammotth/Desktop/worldcupclean.csv", row.names=FALSE)

#1 
halfGoals <- worldcup %>% distinct() %>% select(Datetime,Home.Team.Name,Half.time.Home.Goals,Away.Team.Name,Half.time.Away.Goals) 
%>% rename(Home.Team.Goals = Half.time.Home.Goals,Away.Team.Goals = Half.time.Away.Goals) %>% filter(Away.Team.Goals + Home.Team.Goals > 4)
halfGoals <- halfGoals %>% mutate(Total.Goals = Home.Team.Goals + Away.Team.Goals)
View(halfGoals)

#2
factor(worldcup$Stadium)
stadium <- factor(worldcup$Stadium)
summary(stadium)
which(summary(stadium)==10)

#3
totalGoals <- worldcup %>% select(Year,Home.Team.Goals,Half.time.Home.Goals) %>% 
filter(worldcup$Year == 1930) %>% 
summarise(sum.Home.Team.1930 = sum(Home.Team.Goals), sum.Half.Time.Home.Team.1930 = sum(Half.time.Home.Goals))
View(totalGoals)


#4
Attendance <- worldcup %>% select(Year, Home.Team.Name, Away.Team.Name, Attendance)%>%filter(Attendance > 100000)
View(Attendance)

#5
maximumGoals <- worldcup %>% 
  mutate(Total.Goals = worldcup$Home.Team.Goals + worldcup$Away.Team.Goals + worldcup$Half.time.Home.Goals + worldcup$Half.time.Away.Goals)
maximumGoals <- maximumGoals %>% 
  group_by(Year) %>% 
  summarise(Goals = sum(Total.Goals))
maximumGoals <- maximumGoals %>% 
  filter(Goals == max(Goals))
View(maximumGoals)
