# Libraries
library(ggplot2)
library(dplyr)
library(gapminder)
# Read from input file
dataq3 <- read.delim("Question3_3.txt")
head(dataq3)
# Split
df2 = split(dataq3, dataq3$Interfaces, dataq3$Responses)
# Split again
df21 = split(df2[[1]], df2[[1]]$Responses)
df22 = split(df2[[2]], df2[[2]]$Responses)
df23 = split(df2[[3]], df2[[3]]$Responses)
