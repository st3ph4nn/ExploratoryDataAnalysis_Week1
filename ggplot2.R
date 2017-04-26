load("./HouseholdPowerConsumption.Rdata")

library(ggplot2)

png(filename = "ggplot2.png", width = 480, height = 480, units = "px", bg = "transparent")

plot(Datanew$Date_Time, Datanew$Global_active_power, type = "l"
     , ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()

