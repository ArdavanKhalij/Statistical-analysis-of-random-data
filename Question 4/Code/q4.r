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
