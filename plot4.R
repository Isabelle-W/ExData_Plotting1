## read data
subset_data <- read.csv("household_power_consumption_subset.txt",header=TRUE,sep=";",na.strings="?")

date_time <- paste(subset_data$Date,subset_data$Time,sep=";")
times <- strptime(date_time,format="%e/%m/%Y;%H:%M:%S")

## plot 4
png("plot4.png")
par(mfrow=c(2,2))
with(subset_data, {
    plot(times,Global_active_power,xlab="",ylab="Global Active Power",type="n")
    lines(times,Global_active_power)
    plot(times,Voltage,xlab="datetime",type="n")
    lines(times,Voltage)
    plot(times,Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
    lines(times,Sub_metering_1)
    lines(times,Sub_metering_2,col="red")
    lines(times,Sub_metering_3,col="blue")
    legend("topright", lty=c(1,1,1), col=c("black","red","blue"), bty="n", 
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    plot(times,Global_reactive_power,xlab="datetime",type="n")
    lines(times,Global_reactive_power)
})
dev.off()
