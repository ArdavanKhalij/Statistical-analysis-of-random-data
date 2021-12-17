# Import data
dataq2 <- read.delim("Question2_1.txt")
# Convert dataset
dataq2$CPU_Failure <- paste(dataq2$CPU, dataq2$Failure, sep="_")
data_new <- dataq2[c("Temperature", "CPU_Failure")]
# Box plot
boxplot(Temperature~CPU_Failure, 
        data_new, 
        ylab="Time", 
        xlab = "Static Analysis status", 
        names=c("AMD_FALSE","AMD_True", 
                "Intel_FALSE", 
                "Intel_TRUE"
               ), 
        main = "Time with and without Static Analysis", 
        notch=TRUE
       )
