#plotting energy sub meters(1-3)
#read in the data
graph_data <- read.table("household_power_consumption.txt", header = TRUE, sep=";")
plot(Date_Time, as.numeric(extract_data$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
lines(Date_Time, as.numeric(extract_data$Sub_metering_2), type="l", col="red")
lines(Date_Time, as.numeric(extract_data$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

