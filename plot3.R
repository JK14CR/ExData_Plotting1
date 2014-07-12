#data download and reading code is available in file plot1.R, which can be accessed in the same repository
source("plot1.R")

#3rd plot
png(file="plot3.png",width=480,height=480)
plot(temp$datetime,temp$Sub_metering_1, type="l",xlab="",ylab="Energy sub metering")
lines(temp$datetime,temp$Sub_metering_2,type="l",col="red")
lines(temp$datetime,temp$Sub_metering_3,type="l",col="blue")
legend("topright",col=c("black","red","blue"),lty="solid",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()


