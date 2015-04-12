# Exploratory Data Analysis Course project 1 , Plot 2

#Read data and convert date format
mydata <- read.table("household_power_consumption.txt", sep=";", quote="\"",na.strings = "?",header=TRUE)
mydata$Date <- as.Date(mydata$Date,"%d/%m/%Y")

#Create subset of data for plotting
dataforuse <- subset(mydata, Date >= "2007-02-01" & Date <="2007-02-02" )
dataforuse[,"DateTime"]<-paste(dataforuse[,"Date"], dataforuse[,"Time"],sep=" ")

#Plot data and output it to file

plot(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Global_active_power"], type="l", 
        xlab="", ylab="Global Active Power (kilowatts)")
#axis.POSIXct(1, at=seq(daterange[1],daterange[2],by="day",format="%a"))
dev.copy(png, file="plot2.png", width=480, height=480 )
dev.off ()

