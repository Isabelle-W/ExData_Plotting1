## read data
subset_data <- read.csv("household_power_consumption_subset.txt",header=TRUE,sep=";",na.strings="?")

date_time <- paste(subset_data$Date,subset_data$Time,sep=";")
times <- strptime(date_time,format="%e/%m/%Y;%H:%M:%S")

## plot 1
png("plot1.png")
hist(subset_data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")
dev.off()
