load("./HouseholdPowerConsumption.Rdata")

library(ggplot2)
png(filename = "ggplot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfrow = c(2,2))

plot(Datanew$Date_Time, Datanew$Global_active_power, type = "l"
     , ylab = "Global Active Power (kilowatts)", xlab = "")

plot(Datanew$Date_Time, Datanew$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(Datanew$Date_Time, Datanew$Sub_metering_1, type = "n"
     , xlab = "", ylab = "Energy sub metering")
legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       ,col = c("black", "red", "blue"), bty = "n")
lines(Datanew$Date_Time, Datanew$Sub_metering_1, type = "l", col = "black")
lines(Datanew$Date_Time, Datanew$Sub_metering_2, type = "l", col = "red")
lines(Datanew$Date_Time, Datanew$Sub_metering_3, type = "l", col = "blue")

plot(Datanew$Date_Time, Datanew$Global_reactive_power, type = "l", xlab = "datetime"
     , ylab ="Global Reactive Power")

dev.off()
