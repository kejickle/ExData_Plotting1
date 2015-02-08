data = read.table("household_power_consumption.txt", sep=";", dec = ".", header=T)
data = data[data$Date %in% c("1/2/2007", "2/2/2007"),]
data$Global_active_power = as.character(data$Global_active_power)
data$Global_active_power = as.numeric(data$Global_active_power)
png(file = "plot1.png", width = 480, height = 480)
plot = hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main="Global Active Power", axes=F,breaks=12)
axis(1, c(0,2,4,6))
axis(2, c(0,200,400,600,800,1000,1200))
dev.off()
