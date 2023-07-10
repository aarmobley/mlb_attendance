#import data
#load packages reshape2 and dplyr

#load data
mlb <- MLB_Att_91_99

#drop Total and Ballpark columns
mlb$Total <- NULL
mlb$Ballpark <- NULL

#use melt function for long format
long_mlb <- melt(mlb, id = 'Team')


#load 2000's attendance data

mlb0 <- MLB_Att_00_09

#drop columns
mlb0$Total <- NULL
mlb0$Ballpark <- NULL

#use melt function for long format
long_mlb0 <- melt(mlb0, id = 'Team')

#export datasets
write.csv(long_mlb0, file = 'C:\\Users\\Aaron Mobley\\Desktop\\Final Project Data\\mlb0.csv', row.names = FALSE)

write.csv(long_mlb, file = 'C:\\Users\\Aaron Mobley\\Desktop\\Final Project Data\\mlb90.csv', row.names = FALSE)
