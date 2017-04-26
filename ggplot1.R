load("./HouseholdPowerConsumption.Rdata")

library(ggplot2)

png(filename = "ggplot1.png", width = 480, height = 480, units = "px", bg = "transparent")

hist(Datanew$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")


dev.off()

