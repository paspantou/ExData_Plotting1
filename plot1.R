
datafilename <- "./4.ExploratoryDataAnalysis/household_power_consumption.txt"
fulldata <- read.table(datafilename, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
dataset <- fulldata[fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(dataset$Global_active_power)
png("./4.ExploratoryDataAnalysis/plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()