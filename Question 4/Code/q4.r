data <- read.delim("Question4_3.txt")
head(data)
hist(data$Times, 
     breaks = seq(15,40,5), 
     xlab = "Time(Minute)", 
     main = "Frequency"
)
input <- data[,c('Times', Static_Analysis')]
boxplot(Times~Static_Analysis, 
     data, ylab="Time", 
     xlab = "Static Analysis status", 
     names=c("Static Analysis","No Static Analysis"), 
     main = "Time with and without Static Analysis"
)
