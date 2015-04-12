# Exploratory Data Analysis Course project 1 , Plot 2

#Source the data from read_data.R
source('read_data.R')

#Plot data and output it to file

plot(as.POSIXct(dataforuse[,"DateTime"]), dataforuse[,"Global_active_power"], type="l", 
        xlab="", ylab="Global Active Power (kilowatts)")
#axis.POSIXct(1, at=seq(daterange[1],daterange[2],by="day",format="%a"))
dev.copy(png, file="plot2.png", width=480, height=480 )
dev.off ()

