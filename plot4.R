data <- read.delim("/Users/shardul/Work/Malaria_PhD/Exploratory_Data_Science/Homework/Week1/household_power_consumption.txt", header = TRUE, sep = ";")

idx <- data[,"Date"] == "1/2/2007" | data[,"Date"] == "2/2/2007"
data_subset <- data[idx,]

png(filename="plot4.png", width=480, height=480)
par(mfrow = c(2,2))
plot(as.numeric(paste(data_subset$Global_active_power)), 
     type = "l",
     ylab = "Global Active Power",
     xlab = "",
     xaxt = "n")
axis(side=1, at=c(0,1441,2881), labels=c("Thu","Fri","Sat")) 
plot(as.numeric(paste(data_subset$Voltage)),
     type = "l",
     xlab = "datetime",
     ylab = "Voltage",
     xaxt = "n")
axis(side=1, at=c(0,1441,2881), labels=c("Thu","Fri","Sat"))
plot(as.numeric(paste(data_subset$Sub_metering_1)), 
     type = "l",
     xlab = "",
     ylab = "Energy sub metering",
     xaxt = "n")
lines(as.numeric(paste(data_subset$Sub_metering_2)),
      col="red")
lines(as.numeric(paste(data_subset$Sub_metering_3)),
      col="blue")
axis(side=1, at=c(0,1441,2881), labels=c("Thu","Fri","Sat")) 
legend("topright", lwd = 1, bty = "n", col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(as.numeric(paste(data_subset$Global_reactive_power)), 
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power",
     xaxt = "n")
axis(side=1, at=c(0,1441,2881), labels=c("Thu","Fri","Sat")) 

dev.off()