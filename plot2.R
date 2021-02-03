#Plot the global active power consumption between 1/2/2007 and 2/2/2007 
#Convert the Date and Time into y/m/d/h/m/s format 
#read in the data
graph_data <- read.table("household_power_consumption.txt", header = TRUE, sep=";")
Date_Time <- strptime(paste(extract_data$Date, extract_data$Time, sep= " "), "%d/%m/%Y %H:%M:%S")
plot(Date_Time, as.numeric(GAP), type="l", xlab="", ylab="Global Active Power (KW)")


