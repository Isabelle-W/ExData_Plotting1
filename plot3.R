## read data
subset_data <- read.csv("household_power_consumption_subset.txt",header=TRUE,sep=";",na.strings="?")

date_time <- paste(subset_data$Date,subset_data$Time,sep=";")
times <- strptime(date_time,format="%e/%m/%Y;%H:%M:%S")

## plot 3
png("plot3.png")
plot(times,subset_data$Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
lines(times,subset_data$Sub_metering_1)
lines(times,subset_data$Sub_metering_2,col="red")
lines(times,subset_data$Sub_metering_3,col="blue")
legend("topright",lty=c(1,1,1), col=c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
