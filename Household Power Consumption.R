
library(dplyr)
library(dtplyr)
library(ggplot2)
library(lubridate)

##' Download file from the given link, unzip the file and load it into 'Data'
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "~/householdpowerconsumption.zip", 
              method = "auto", quiet = TRUE, mode = "wb")
unzip("~/householdpowerconsumption.zip", exdir = "~")
Data <- read.table("~/household_power_consumption.txt", header = TRUE, sep = ";"
                 , stringsAsFactors = FALSE)

##' subsetting the necessary dates, combining the dates and times into 1 column,
##' and converting the 'Date_Time' column to "POSIXct" "POSIXt" and the columns (4:10) to numeric classes
Datanew <- Data[Data$Date=="1/2/2007"|Data$Date=="2/2/2007",]
Datanew$Date_Time <- paste(Datanew$Date, Datanew$Time)
Datanew$Date_Time <- dmy_hms(Datanew$Date_Time)
Datanew <- Datanew %>% select(10, 1:9) %>% mutate_each(funs(as.numeric), 4:10)

##' Save the tidy data into HouseholdPowerConsumption.Rdata and removing remaining files since
##' it will not be used anymore.
save("Datanew", file = "./HouseholdPowerConsumption.Rdata")
file.remove(c("~/householdpowerconsumption.zip", "~/household_power_consumption.txt"))
