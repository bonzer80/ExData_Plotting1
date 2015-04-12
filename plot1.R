
# Exploratory Data Analysis Course project 1 , Plot 1

#Read data and convert date format
mydata <- read.table("household_power_consumption.txt", sep=";", quote="\"",na.strings = "?",header=TRUE)
mydata$Date <- as.Date(mydata$Date,"%d/%m/%Y")

#Create subset of data for plotting
dataforuse <- subset(mydata, Date >= "2007-02-01" & Date <="2007-02-02" )

#Plot data and output it to file
hist(dataforuse$Global_active_power, main = "Global Active Power", 
    col = "Red",xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480 )
dev.off ()


