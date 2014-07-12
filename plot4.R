#data download and reading code is available in file plot1.R, which can be accessed in the same repository
source("plot1.R")

#4th plot
png(file="plot4.png",width=480,height=480)
par(mfcol=c(2,2))
plot(temp$datetime,temp$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(temp$datetime,temp$Sub_metering_1, type="l",xlab="",ylab="Energy sub metering")
lines(temp$datetime,temp$Sub_metering_2,type="l",col="red")
lines(temp$datetime,temp$Sub_metering_3,type="l",col="blue")
legend("topright",inset=0.1,cex=0.70,col=c("black","red","blue"),box.lty="blank",lty="solid",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(temp$datetime,temp$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(temp$datetime,temp$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()

