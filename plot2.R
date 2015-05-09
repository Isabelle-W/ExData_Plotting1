## read data
subset_data <- read.csv("household_power_consumption_subset.txt",header=TRUE,sep=";",na.strings="?")

date_time <- paste(subset_data$Date,subset_data$Time,sep=";")
times <- strptime(date_time,format="%e/%m/%Y;%H:%M:%S")

## plot 2
png("plot2.png")
plot(times,subset_data$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="n")
lines(times,subset_data$Global_active_power)
dev.off()
