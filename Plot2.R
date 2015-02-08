data = read.table("household_power_consumption.txt", sep=";", dec = ".", header=T)
data = data[data$Date %in% c("1/2/2007", "2/2/2007"),]
dTime = as.POSIXlt(paste(as.Date(data$Date, format = "%d/%m/%Y"), data$Time, sep=" "))
data$Global_active_power = as.character(data$Global_active_power)
data$Global_active_power = as.numeric(data$Global_active_power)

plot(dTime, data$Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab="")
