#data download and reading code is available in file plot1.R, which can be accessed in the same repository
source("plot1.R")

#2nd plot
png(file="plot2.png",width=480,height=480)
plot(temp$datetime,temp$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
