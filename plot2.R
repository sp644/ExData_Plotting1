data <- read.delim("/Users/shardul/Work/Malaria_PhD/Exploratory_Data_Science/Homework/Week1/household_power_consumption.txt", header = TRUE, sep = ";")

idx <- data[,"Date"] == "1/2/2007" | data[,"Date"] == "2/2/2007"
data_subset <- data[idx,]

png(filename="plot2.png", width=480, height=480)
plot(as.numeric(paste(data_subset$Global_active_power)), 
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     xaxt= "n")
axis(side=1, at=c(0,1441,2881), labels=c("Thu","Fri","Sat")) 

dev.off()
