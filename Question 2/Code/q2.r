# Import data
dataq2 <- read.delim("Question2_1.txt")
# Convert dataset
dataq2$CPU_Failure <- paste(dataq2$CPU, dataq2$Failure, sep="_")
data_new <- dataq2[c("Temperature", "CPU_Failure")]
# Box plot
boxplot(Temperature~CPU_Failure, 
        data_new, 
        ylab="Temperature", 
        xlab = "Failure status", 
        names=c("AMD success","AMD failure", 
                "Intel success", 
                "Intel failure"
               ), 
        main = "Failure and success, base on temperature", 
        notch=TRUE
       )
