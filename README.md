# 015-WorldCup

Original Datasets from: [WorldCup Dataset](https://www.kaggle.com/mysarahmadbhat/world-cup?select=WorldCupMatches.csv)

### About's WorldCup Datasets

Data from all World Cup results (1930-2014), details for each match (Date, Stage, City, Ref, Home Team, Away Team, Goals, Goals at Half, etc), and details for events (goals, assists, etc) by athlete.

## Overview

Our group chose this dataset because they wanted to study match history, scores, stadiums, cities and countries in which the matches

สิ่งที่อยากรู้ :

1.  เวลาที่มีการแข่งขันมากสุด
2.  คู่ไหนที่ยิงประตูครึ่งหลังรวมกันเกิน 4 ประตู
3.  สนามไหนที่ใช้ในการแข่งขันบอลโลกมากที่สุด
4.  ประเทศที่แข่งแล้วทำประตูรวมกันได้มากที่สุดในครึ่งแรก
5.  ประเทศที่แข่งแล้วทำประตูรวมกันได้น้อยที่สุดในครึ่งแรก
6.  ประเทศที่ชนะได้ในการต่อเวลาพิเศษบ่อยสุด
7.  สนามไหนถูกใช้ในช่วงเวลาเดียวกันมากที่สุด
8.  ในการแข่งขันฟุตบอลโลกปีไหนที่ไม่มีผู้ชมเข้าร่วมเลย

--
1.  คู่ไหนที่ยิงประตูครึ่งหลังรวมกันเกิน 4 ประตู
halfGoals <- worldcup %>% select(Home.Team.Name,Half.time.Home.Goals,Away.Team.Name,Half.time.Away.Goals) %>% rename(Home.Team.Goals = Half.time.Home.Goals,Away.Team.Goals = Half.time.Away.Goals) %>% filter(Away.Team.Goals + Home.Team.Goals > 4)
halfGoals <- halfGoals %>% mutate(Total.Goals = Home.Team.Goals + Away.Team.Goals)
View(halfGoals)

2.  สนามไหนที่ใช้ในการแข่งขันบอลโลก 6 ครั้ง


### Steps

1. Define a question
2. Search datasets from Kaggle
3. Download Library and dataset
4. Explore the dataset from the original dataset
5. Cleaning Dataset
6. Exploratory Data Analysis

### Tools

- R Language
- R Studio Desktop

## Table of Contents

1. [Exploratory Data Analysis](./01_explore.md)
2. [Data Visualization]()

## Resources

### Important Files in Repository

- [code_eda.R](./code_eda.R) : Exploratory Data Analysis
- [worldcup_original.csv](./WorldCupMatches.csv): Original Dataset
- [worldcup_clean.csv](./worldcupclean.csv): Clean Dataset

### References

// Link

## About Us

งานนี้เป็นส่วนของวิชา INT214 Statistics for Information technology <br/> ภาคเรียนที่ 1 ปีการศึกษา 2564 คณะเทคโนโลยีสารสนเทศ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี

### Team: name of team

1. ณิชกานต์ ปาสาณี StudentID: 63130500036
2. ดวงกมล เจริญวัฒนมงคล StudentID: 63130500038
3. ธนดล หวังศิริสมบูรณ์ StudentID: 63130500047
4. นภัสวรรณ บุตรวัตร StudentID: 63130500064
5. นิธิศ ลำพาย StudentID: 63130500072

### Instructor

- ATCHARA TRAN-U-RAIKUL
- JATAWAT XIE (Git: [safesit23](https://github.com/safesit23))
