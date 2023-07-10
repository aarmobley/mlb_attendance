#import data

#testing for assumptions - Linearity 
scatter.smooth(x=braves$W, y=braves$Attendance, 
               main="Attendance by Wins")
#We have a relationship of wins and attendance

#Homoscedasticity 

lmMod <- lm(Attendance~W, data=braves)
par(mfrow=c(2,2))
plot(lmMod)
#heteroscedasticity

#Breash-Pagan test
lmtest::bptest(lmMod)
#passed- show homoscedasticity 

#NCV test
car::ncvTest(lmMod)

#Both tests show Homoscedasticity 

#homogeneity of variance

#screening for outliers
CookD(lmMod, group=NULL, plot=TRUE, idn=3, newwd=TRUE)
#one outlier in row 1

lev = hat(model.matrix(lmMod))
plot(lev)

car::outlierTest(lmMod)

summary(influence.measures(lmMod))
#no significant outliers in x and y space

summary(lmMod)
#with a p value of .0009 we can determine that there is significant evidence that
#the number of wins influences attendance for the braves

#to predict attendance for the following year
# y = 39730(106) - 921082 = 3,290,298
