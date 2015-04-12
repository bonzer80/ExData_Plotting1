
# Exploratory Data Analysis Course project 1 , Plot 1

#Source the data from read_data.R
source('read_data.R')

#Plot data and output it to file
hist(dataforuse$Global_active_power, main = "Global Active Power", 
    col = "Red",xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480 )
dev.off ()



