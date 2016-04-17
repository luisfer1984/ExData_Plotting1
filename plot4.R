plot4 <- function()
{
        mydata=read.table("./household_power_consumption.txt",header=TRUE,sep=";", stringsAsFactors=FALSE, dec=".")
        subsetDat <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
        
        dt <- strptime(paste(subsetDat$Date, subsetDat$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

        png("plot4.png", width=480, height=480)
        
        par(mfrow=c(2,2))
        plot(dt, as.numeric(subsetDat$Global_active_power), type="l", xlab="",ylab="Global Active Power")
        plot(dt, as.numeric(subsetDat$Voltage), type="l", xlab="datetime",ylab="Voltage")
        plot(dt, as.numeric(subsetDat$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering")
        lines(dt, as.numeric(subsetDat$Sub_metering_2), type="l", col="red")
        lines(dt, as.numeric(subsetDat$Sub_metering_3), type="l", col="blue")
        legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,bty="o")
        plot(dt, as.numeric(subsetDat$Global_reactive_power), type="l", xlab="datetime",ylab="Global_reactive_power")
        
        dev.off()
        
}