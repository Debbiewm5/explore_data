## Reading and plotting downloaded data-plot1.R
dataFile <- "./ExData_Plotting1/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
        ## Check read.table
        head(data)
                subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
                #str(subSetData)
        myData <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(myData, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()

