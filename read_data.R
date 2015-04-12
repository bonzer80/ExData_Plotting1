#Read data and convert date format
mydata <- read.table("household_power_consumption.txt", sep=";", quote="\"",na.strings = "?",header=TRUE)
mydata$Date <- as.Date(mydata$Date,"%d/%m/%Y")

#Create subset of data for plotting
dataforuse <- subset(mydata, Date >= "2007-02-01" & Date <="2007-02-02" )
dataforuse[,"DateTime"]<-paste(dataforuse[,"Date"], dataforuse[,"Time"],sep=" ")
