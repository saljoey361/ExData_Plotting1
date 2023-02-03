data<-read.table('household_power_consumption.txt',sep=";",na.strings="?", header = T)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$Global_active_power<-as.numeric(data$Global_active_power)
data2<-data[which(data$Date %in% as.Date(c("2007-02-01", "2007-02-02"))),]
png(filename="plot1.png", width=480, height = 480)
hist(data2$Global_active_power, col="red", main='Global Active Power', xlab='Global Active Power (kilowatts)')
dev.off()