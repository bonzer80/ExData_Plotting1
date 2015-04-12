# Exploratory Data Analysis Course project 1 , Plot 4

#Read data and convert date format
mydata <- read.table("household_power_consumption.txt", sep=";", quote="\"",na.strings = "?",header=TRUE)
mydata$Date <- as.Date(mydata$Date,"%d/%m/%Y")

#Create subset of data for plotting
dataforuse <- subset(mydata, Date >= "2007-02-01" & Date <="2007-02-02" )
dataforuse[,"DateTime"]<-paste(dataforuse[,"Date"], dataforuse[,"Time"],sep=" ")

#Plot data and output it to file
png("plot4.png", width=480, height=480)
#Create a canvas with 2 rows and 2 columns
par(mfcol=c(2,2))
#plot1
plot(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Global_active_power"], type="l", 
     xlab="", ylab="Global Active Power")
#plot2
plot(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Sub_metering_1"], type="l", 
     xlab="", ylab="Energy sub metering")
lines(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Sub_metering_2"], type="l", 
      xlab="", ylab="Energy sub metering",col="Red")
lines(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Sub_metering_3"], type="l", 
      xlab="", ylab="Energy sub metering",col="Blue")
legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,bty="n",
       col=c("Black","Red","Blue"))
#plot3
plot(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Voltage"], type="l", 
     xlab="datetime", ylab="Voltage")
#plot4
plot(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Global_reactive_power"], type="l", 
     xlab="datetime", ylab="Global_rective_power")
dev.off ()

