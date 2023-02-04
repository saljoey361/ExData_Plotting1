data<-read.table('household_power_consumption.txt',sep=";",na.strings="?", header = T)
data<-data[data$Date %in% c("1/2/2007","2/2/2007"), ]
date<-as.Date(data[, 1],format = "%d/%m/%Y")
time<-strptime(data[, 2], format = "%H:%M:%S")
timex<-as.POSIXct(paste(date, data[, 2]))
png(filename="plot2.png", width=480, height = 480)
plot(timex, data[, 3], xlab="", type = "l",ylab="Global Active Power (kilowatts)")
dev.off()