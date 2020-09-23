myData = read.csv("D:/Study/Great Lakes/R/SMDM group assignment 01092019/Cold_Storage_Temp_Data Q1.csv")
getwd()
summary(myData)
temp_summer = mean(myData$Temperature,myData$Season="Summer")
temp_summer
summary(myData$Temperature[Season = "Summer"])


##Find mean cold storage temperature for Summer, Winter and Rainy Season 
tapply(myData$Temperature, myData$Season,mean)

##Find overall mean for the full year
Mean(myData$Temperature)

##Find Standard Deviation for the full year
sd(myData$Temperature)
tapply(myData$Temperature,,sd)

## Assume Normal distribution, what is the probability of temperature having fallen below 2 C?
pnorm(2,mean(myData$Temperature), sd(myData$Temperature))

## Assume Normal distribution, what is the probability of temperature having gone above 4 C?

1- pnorm(4,mean(myData$Temperature), sd(myData$Temperature))

# What will be the penalty for the AMC Company? 
## % temperature below 2 and avove 4 in %
(pnorm(2,mean(myData$Temperature), sd(myData$Temperature)) + 1- pnorm(4,mean(myData$Temperature), sd(myData$Temperature))) *100

myPop = read.csv("D:/Study/Great Lakes/R/SMDM group assignment 01092019/Cold_Storage_Temp_Data Q1.csv")
myData = read.csv("D:/Study/Great Lakes/R/SMDM group assignment 01092019/Cold_Storage_Mar2018-1 Q2.csv")
tapply(myData$Temperature, myData$Season,mean)
sd(myData$Temperature)

tStat = (3.974286 -3.9)/ (.159674/(35)^0.5)
2* pt(tStat,df= 34,lower.tail = FALSE)

t.test(myData$Temperature, mu=3.9, conf.level = 0.90)
