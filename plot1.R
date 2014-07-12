WD <- getwd()
if (!is.null(WD)) setwd(WD) #working directory

url<-"http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

destfile<-"datazip.zip"

download.file(url,destfile)  #download and unzip the data
datasource<-unzip("datazip.zip")

title<-read.table(datasource,header=TRUE,sep=";",nrows=1) #read 1st row, only used for column names
temp<-read.table(datasource,header=FALSE,sep=";",nrows=2881,skip=66637,na.strings="?")
#read required rows - trial and error method for numbers of rows to be skipped

colnames(temp)<-colnames(title)
temp$datetime <- strptime(paste(temp$Date,temp$Time), format="%d/%m/%Y %H:%M:%S")

#1st plot

png(file="plot1.png",width=480,height=480)
hist(temp$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")
dev.off()
