# Analytical Inferential Statistics
สนามจัดการแข่งขันที่ใช้ในการจัดการแข่งขันฟุตบอลมากกว่า 4 ครั้ง มีจำนวนสนามทั้งหมด 108 สนาม 
จะมีค่าเฉลี่ยผู้เข้าชมมากกว่า 45000 โดยจากข้อมูลของ 108 สนามแข่งมีค่าเฉลี่ยผู้เข้าชมอยู่ที่ 46858.02 
และส่วนเบี่ยงเบนมาตรฐาน 19446.89 (กำหนดค่า alpha = 0.05)

## Step 0: Assign variables
```r
n <- 181
meanAttendancestadium <- worldcup %>% select(Stadium, Attendance) %>% group_by(Stadium) %>% summarize(sumAttendance = mean(Attendance, na.rm=TRUE))
meanAttendancestadium
countStadium <- worldcup %>% count(Stadium) %>% arrange(desc(n))
dataStadium <- merge(x = meanAttendancestadium, y = countStadium, by = "Stadium", all = TRUE) %>% arrange(desc(n)) %>% filter(n >= 4)

n <- 108
meanDataStatium <- mean(dataStadium$sumAttendance) #46858.02
sdDataStatium <- sd(dataStadium$sumAttendance); #19446.89
mue0 <- 45000
```


## Step 1: State the hypothesis
```ruby
H0: mue >= 45000
Ha: mue < 45000
```


Step 2: Level of significance
```ruby
alpha <- 0.05
```


Step 3: Test statistic
```ruby
t <- (meanDataStatium - mue0)/(sdDataStatium/sqrt(n)) #0.9929168
```


Step 4: Finding P-value approach or Critical Value approach
```ruby
# P-value approach
pvalue <- pt(t, (n-1),lower.tail = TRUE) #0.8385047

# Critical Value approach
talpha <- qt(alpha, (n-1), lower.tail = TRUE) #-1.659219
```

Step 5: Compare
```ruby
# Using p-value approach = "Accept H0"
if(pvalue<=alpha){
  print("Reject H0")
}else{
  print("Accept H0")
}

# Using critical value = "Accept H0"
if(t<=talpha){
  print("Reject H0")
}else{
  print("Accept H0")
}
```

Step 6: Conclusion
```
สนามจัดการแข่งขันที่ใช้ในการจัดการแข่งขันฟุตบอลมากกว่า 4 ครั้ง มีค่าเฉลี่ยผู้เข้าชมมากกว่า 45000
```
