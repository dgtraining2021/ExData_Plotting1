#read in the data
graph_data <- read.table("household_power_consumption.txt", header = TRUE, sep=";")
#extract the data from 1/2/2007 to 2/2/2007
extract_data <- graph_data[graph_data$Date %in% c("1/2/2007", "2/2/2007"),]
GAP <- extract_data$Global_active_power
hist(as.numeric(GAP), col="Red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
















