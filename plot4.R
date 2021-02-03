#read in the data
graph_data <- read.table("household_power_consumption.txt", header = TRUE, sep=";")
par(mfrow=c(2,2))
plot(Date_Time, as.numeric(GAP), type="l", xlab="Date/Time", ylab="Global Active Power (KW)")
plot(Date_Time, as.numeric(extract_data$Voltage), type="l", ylab="Voltage", xlab="Date/Time")
plot(Date_Time, as.numeric(extract_data$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
lines(Date_Time, as.numeric(extract_data$Sub_metering_2), type="l", col="red")
lines(Date_Time, as.numeric(extract_data$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
plot(Date_Time, as.numeric(extract_data$Global_reactive_power), type="l", xlab="Date/Time", ylab="Global Reactive Power (KW)")





