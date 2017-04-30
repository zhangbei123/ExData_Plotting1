##Plot 2
data$datetime<-paste(data$Date,data$Time,sep=" ")
data$datetime <- strptime(data$datetime, "%d/%m/%Y %H:%M:%S") 
data$Global_active_power <- as.numeric(data$Global_active_power)
png("./graphs/plot2.png", width=480, height=480)
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
