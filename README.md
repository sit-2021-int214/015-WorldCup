# 015-WorldCup

Original Datasets from: [WorldCup Dataset](https://www.kaggle.com/mysarahmadbhat/world-cup?select=WorldCupMatches.csv)

![WorldCup](https://github.com/sit-2021-int214/015-WorldCup/blob/master/1.jpeg)

### About's WorldCup Datasets

Data from all World Cup results (1930-2014), details for each match (Date, Stage, City, Ref, Home Team, Away Team, Goals, Goals at Half, etc), and details for events (goals, assists, etc) by athlete.

## Contents in Datagram
1. `Year` : ปีที่ทำการแข่งขัน
2. `Datetime` : วัน/เวลา ที่เตะ
3. `Stage` : รอบที่เตะ
4. `Stadium` : สนามที่เตะ
5. `City` : เมืองที่่จัดการแข่งขัน
6. `Home Team Name` : ชื่อที่เหย้า 
7. `Home Team Goals` : จำนวนลูกทีมเหย้า 
8. `Away Team Name` : ชื่อทีมเยือน
9. `Away Team Goals` : จำนวนลูกทีมเยือน
10. `Win Conditions` : ต่อเวลาพิเศษ
11. `Attendance` : จำนวนของผู้ชม
12. `Half-time Home Goals` : จำนวนลูกที่ทีมเหย้ายิงในครึ่งแรก
13. `Half-time Away Goals` : จำนวนลูกที่ทีมเยือนยิงในครึ่งแรก
14. `Refeeree` : กรรมการในสนาม
15. `Assistant 1` : ผู้ช่วยกรรมการ (คนที่ 1)
16. `Assistant 2` : ผู้ช่วยกรรมการ (คนที่ 2)
17. `RoundID` : เลขไอดีของรอบการแข่งขัน
18. `MatchID` : เลขไอดีของรอบการแข่งขัน
19. `Home Team Initials ` : ชื่อย่อทีมเหย้า
21. `Away Team Initials ` : ชื่อย่อทีมเยือน

## ⚽Overview

Our group chose this dataset because they wanted to study match history, scores, stadiums, cities and countries in which the matches

## 🔍Object
สิ่งที่อยากรู้ :

1. คู่ไหนที่ทีมเหย้าและทีมเยือน ยิงประตูในครึ่งหลังรวมกันเกิน 4 ลูก
2. สนามไหนที่ใช้ในการจัดแข่งขันบอลโลกทั้งหมด 10 ครั้ง
3. ผลรวมของจำนวนประตูในครึ่งแรก และ ผลรวมของจำนวนประตูในครึ่งหลัง ในปี 1930 มีค่าเท่าไหร่
4. การแข่งขันฟุตโลกในปีไหนที่มีผู้เข้ารับชมเกิน 100,000 คน
5. ในการแข่งขันปีไหนที่มีจำนวนการยิงประตูรวมมากที่สุด

### 📌Steps

1. Define a question
2. Search datasets from Kaggle
3. Download Library and dataset
4. Explore the dataset from the original dataset
5. Cleaning Dataset
6. Exploratory Data Analysis

### 📝Tools

- R Language
- R Studio Desktop
- Google Data Studio

## 📊Table of Contents

1. [Exploratory Data Analysis](./01.explore.md)
2. [Data Visualization](https://github.com/sit-2021-int214/015-WorldCup/blob/master/DataStudio/worldcup-group15.pdf)

### Important Files in Repository

- [code_eda.R](./worldcup.R) : Exploratory Data Analysis
- [worldcup_original.csv](./WorldCupMatches.csv): Original Dataset
- [worldcup_clean.csv](./worldcupclean.csv): Clean Dataset

### References

https://www.kaggle.com/mysarahmadbhat/world-cup?select=WorldCupMatches.csv

## 🙍‍♂️🙍‍♀️About Us

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
