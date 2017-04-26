load("./HouseholdPowerConsumption.Rdata")

library(ggplot2)
png(filename = "ggplot3.png", width = 480, height = 480, units = "px", bg = "transparent")


plot(Datanew$Date_Time, Datanew$Sub_metering_1, type = "n"
     , xlab = "", ylab = "Energy sub metering")
lines(Datanew$Date_Time, Datanew$Sub_metering_1, type = "l", col = "black")
lines(Datanew$Date_Time, Datanew$Sub_metering_2, type = "l", col = "red")
lines(Datanew$Date_Time, Datanew$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       ,col = c("black", "red", "blue"))
dev.off()

