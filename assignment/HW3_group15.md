# Assignment 3 (Group)
Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.
Assignment 3 (Group): Explore Data with dpylr

### Answer

1.) In cats data. Have 47 female's cats and 97 male's cats.
```{R}
factor(cats$Sex)
gender <- factor(cats$Sex)
summary(gender)
```
Explore Data with dpylr
```{R}

```


2.) In cats data. The minimum of cat's heart weight is 6.3 g .
```{R}
min(cats$Hwt)
```
Explore Data with dpylr
```{R}
cats %>% dplyr::select(Hwt) %>% min()
```
3.) In cats data. The mean of cat's heart weight is 10.63056 g .
```{R}
mean(cats$Hwt)
```
Explore Data with dpylr
```{R}
cats %>% summarise(mean_heart_weight = mean(Hwt, na.rm = TRUE))
```

4.) In survey data. Have 118 female and 118 male .
```{R}
table(survey$Sex)
```
Explore Data with dpylr
```{R}

```

5.) In survey data. Show results of people who smoke. Of the 11 people who heavy smokers, 189 people who never smoked.
Occasionally 19 people and Regularly 17 people
```{R}
factor(survey$Smoke)
Smoker <- factor(survey$Smoke)
summary(Smoker)
```
Explore Data with dpylr
```{R}

```

### Team: 015 - WorldCup

1. ณิชกานต์ ปาสาณี     StudentID: 63130500036
2. ดวงกมล เจริญวัฒนมงคล    StudentID: 63130500038
3. ธนดล หวังศิริสมบูรณ์    StudentID: 63130500047
4. นภัสวรรณ บุตรวัตร      StudentID: 63130500064
5. นิธิศ ลำพาย     StudentID: 63130500072
