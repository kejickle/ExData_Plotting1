data = read.table("household_power_consumption.txt", sep=";", dec = ".", header=T)
data = data[data$Date %in% c("1/2/2007", "2/2/2007"),]
dTime = as.POSIXlt(paste(as.Date(data$Date, format = "%d/%m/%Y"), data$Time, sep=" "))
par(mfrow=c(2,2))
#graph one 
data$Global_active_power = as.character(data$Global_active_power)
data$Global_active_power = as.numeric(data$Global_active_power)

plot(dTime, data$Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab="")

#Graph two
data$Voltage = as.character(data$Voltage)
data$Voltage = as.numeric(data$Voltage)

plot(dTime, data$Voltage, type="l", ylab = "Voltage", xlab="datetime")

#graph three
data$Sub_metering_1 = as.character(data$Sub_metering_1)
data$Sub_metering_1 = as.numeric(data$Sub_metering_1)
data$Sub_metering_2 = as.character(data$Sub_metering_2)
data$Sub_metering_2 = as.numeric(data$Sub_metering_2)
data$Sub_metering_3 = as.character(data$Sub_metering_3)
data$Sub_metering_3 = as.numeric(data$Sub_metering_3)
plot(dTime, data$Sub_metering_1, type = "l", col = "black", xlab="", ylab="Energy sub metering")
lines(dTime, data$Sub_metering_2, type = "l", col = "red")
lines(dTime, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.5, col = c("black", "red", "blue"), lty=1)


#graph four 

data$Global_reactive_power = as.character(data$Global_reactive_power)
data$Global_reactive_power = as.numeric(data$Global_reactive_power)

plot(dTime, data$Global_reactive_power, type="l", ylab = "Global_reactive power", xlab="datetime")
