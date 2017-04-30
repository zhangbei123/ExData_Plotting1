# download  data
fileUrl= "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./data/household_power_consumption.zip")
unzip('./data/household_power_consumption.zip', exdir = './data')

# read data

data01<-read.table("./data/household_power_consumption.txt", header=TRUE, sep=";")
data<-subset(data01,data01$Date=="1/2/2007"|data01$Date=="2/2/2007")


#Plot 1
if(!file.exists('graphs')) dir.create('graphs')
data$Global_active_power <- as.numeric(data$Global_active_power)
png("./graphs/plot1.png", width=480, height=480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
