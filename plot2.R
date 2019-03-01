
datafilename <- "./4.ExploratoryDataAnalysis/household_power_consumption.txt"
fulldata <- read.table(datafilename, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
dataset <- fulldata[fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(dataset$Date, dataset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dataset$Global_active_power)
png("./4.ExploratoryDataAnalysis/plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()