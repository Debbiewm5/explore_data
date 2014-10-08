##PreliminaryDataCode
## Run if file does not exist

if(!file.exists("exdata-data-household_power_consumption.zip")) {
        temp <- tempfile()
        download.file(http://d396qusza4Oorc.cloudfront.net/exdata%2Fhousehold_power_consumption.zip",
                      temp)
                file <- unzip(temp)
                unlink(temp)        
}
