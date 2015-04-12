# Exploratory Data Analysis Course project 1 , Plot 3

#Source the data from read_data.R
source('read_data.R')

#Plot data and output it to file
png("plot3.png", width=480, height=480)

plot(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Sub_metering_1"], type="l", 
     xlab="", ylab="Energy sub metering")
lines(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Sub_metering_2"], type="l", 
      xlab="", ylab="Energy sub metering",col="Red")
lines(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Sub_metering_3"], type="l", 
      xlab="", ylab="Energy sub metering",col="Blue")
legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,
       col=c("Black","Red","Blue"))

dev.off ()

