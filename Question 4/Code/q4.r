data <- read.delim("~/Desktop/StatisticsMWO/Question4_3.txt")
head(data)
hist(data$Times, breaks = seq(15,40,5), xlab = "Time(Minute)")
