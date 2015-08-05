data <- read.delim("/Users/shardul/Work/Malaria_PhD/Exploratory_Data_Science/Homework/Week1/household_power_consumption.txt", header = TRUE, sep = ";")

idx <- data[,"Date"] == "1/2/2007" | data[,"Date"] == "2/2/2007"
data_subset <- data[idx,]

png(filename="plot1.png", width=480, height=480)

hist(as.numeric(paste(data_subset$Global_active_power)),
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red") 

dev.off()