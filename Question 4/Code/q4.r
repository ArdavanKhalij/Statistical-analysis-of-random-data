# Libraries
library(effsize)
library(pwr)
# Read from the file
data <- read.delim("Question4_3.txt")
head(data)
# Hist plot
hist(data$Times, 
     breaks = seq(15,40,5), 
     xlab = "Time(Minute)", 
     main = "Frequency"
)
# Boxplot
input <- data[,c('Times', 'Static_Analysis')]
boxplot(Times~Static_Analysis, 
     data, 
     ylab="Time", 
     xlab = "Static Analysis status", 
     names=c("Static Analysis","No Static Analysis"), 
     main = "Time with and without Static Analysis"
)
# Split the table base on Static_Analysis for t-test and cohens'd effect size calculation
df = split(data, data$Static_Analysis)
# T-Test
t.test(df[[1]]$Times, df[[2]]$Times)
# Effect size
cohen.d(df[[1]]$Times, df[[2]]$Times)
# Getting the sample size.
pwr.t.test(n = , d = 0.450709, sig.level = 0.05, power = 0.8)
# Leave a value
# Leave 9
dfNo1 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 4th
dfNo2 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 7th
dfNo3 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 8th
dfNo4 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 5th
dfNo5 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 1st
dfNo6 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 2nd
dfNo7 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 6th
dfNo8 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 3rd
dfNo9 = df[[1]][sample(nrow(df[[1]]), 9), ]
# Leave 10th
dfNo10 = df[[1]][sample(nrow(df[[1]]), 9), ]
##############
# Leave 12th
dfYes1 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 16th
dfYes2 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 19th
dfYes3 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 14th
dfYes4 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 18th
dfYes5 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 13th
dfYes6 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 20th
dfYes7 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 15th
dfYes8 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 17rd
dfYes9 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Leave 11th
dfYes10 = df[[2]][sample(nrow(df[[2]]), 9), ]
# Calculate each n and d
cohen.d(dfNo1$Times, dfYes1$Times)
pwr.t.test(n = , d = 0.3169621, sig.level = 0.05, power = 0.8)
cohen.d(dfNo2$Times, dfYes2$Times)
pwr.t.test(n = , d = 0.5356953, sig.level = 0.05, power = 0.8)
cohen.d(dfNo3$Times, dfYes3$Times)
pwr.t.test(n = , d = 0.4295492, sig.level = 0.05, power = 0.8)
cohen.d(dfNo4$Times, dfYes4$Times)
pwr.t.test(n = , d = 0.266395, sig.level = 0.05, power = 0.8)
cohen.d(dfNo5$Times, dfYes5$Times)
pwr.t.test(n = , d = 0.5202273, sig.level = 0.05, power = 0.8)
cohen.d(dfNo6$Times, dfYes6$Times)
pwr.t.test(n = , d = 0.6628137, sig.level = 0.05, power = 0.8)
cohen.d(dfNo7$Times, dfYes7$Times)
pwr.t.test(n = , d = 0.2824476, sig.level = 0.05, power = 0.8)
cohen.d(dfNo8$Times, dfYes8$Times)
pwr.t.test(n = , d = 0.5390162, sig.level = 0.05, power = 0.8)
cohen.d(dfNo9$Times, dfYes9$Times)
pwr.t.test(n = , d = 0.5352845, sig.level = 0.05, power = 0.8)
cohen.d(dfNo10$Times, dfYes10$Times)
pwr.t.test(n = , d = 0.4737758, sig.level = 0.05, power = 0.8)
