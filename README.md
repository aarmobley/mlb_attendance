<img src="https://github.com/aarmobley/mlb_attendance/blob/main/baseball%20field.jpg" width="900" height=400/>

# Hot Bats, Warms Seats...How winning influences attendance in Major League Baseball



## Summary
* **Combining 2 datasets to analyze 24 MLB teams over 18 years
* **Looked at Wins, Runs Scored, Runs Allowed, On Base Percentage, Batting Average, Slugging Percentage <br>
and attendnace
* **Analyzed which stat has the most influence on Attendance numbers
* **Used wins stat to predict attendnace for the Atlanta Braves
  
## Findings:
   * Top 3 influences for MLB teams are Wins, Runs Scored, and Slugging Percentage

   * Wins are responsible for 51% of variance in attendance for the Atlanta Braves

   * Prediction for 2023 season attendnace for the Braves is 3,449,218


## Code and Resources Used 
**Python Version:** 3.9.12 <br>
**Packages:** pandas, numpy <br>
**R Version:** 4.1.3 <br>
**Packages:** dplyr, rcompanion, car, ggplot2, IDPmisc, readr, gvlma, lmtest <br>
**Tableau:**


## Data Wrangling
1. I combined two datasets. A dataset from Kaggle(Moneyball) and data from [Ballparksofbaseball.com](https://www.ballparksofbaseball.com/baseball-ballpark-attendance/)
2. I changed data from ballparksofbaseball.com to longview in R and changed team names to abbreviations in Python
3. Dropped expansion teams with incomplete data from years 1990-2009
4. Renamed columns and values to merge datasets


## Data Exploration
1. Looked at average of each stat
2. Attendance for Playoff teams and non playoff teams
3. Built correlation matrix to see the correlation between variables
   - Slugging and Runs scored had highest correlation
   - Wins had highest correlation with Attendnace among all stats 


## Data Visualization
1. Used Tableau to see how Wins and Attendance looks among all teams

   <img src="https://github.com/aarmobley/mlb_attendance/blob/main/Attendnace%20with%20wins_playoffs.png" width="800" height=400/>

   - Yankees and Braves with the most wins and playoff appearances also in the top 5 in attendance
   - The darker the blue dots are indicates more playoff appearances 
     

## Statistical Analysis
1. **Stepwise Regression** to find baseball stats that influence attendance the most
2. **Linear Regression model** to perdict attendance based on number of wins
   - Assuption testing - There is a linear relationship, homoscedasticity, homogeneity of variance, multicolinearity.
   - There was one outlier that was considered significant
   - This was quality data to use for this model

