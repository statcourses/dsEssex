library(NHANES)
data(NHANES)
names(NHANES)

require(dplyr)
nhanes <- NHANES %>% select(ID, Gender, Age, AgeDecade, Education, MaritalStatus, HomeRooms,
                            HomeOwn, Weight, Height, BMI, BPSysAve, BPDiaAve, SleepTrouble,
                            Diabetes, DiabetesAge, Depressed, SleepHrsNight, SleepTrouble,
                            SmokeNow, SmokeAge)

save(nhanes, file = "data/nhanes.RData")
