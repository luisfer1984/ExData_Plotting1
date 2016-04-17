plot2 <- function()
{}
        mydata=read.table("./household_power_consumption.txt",header=TRUE,sep=";", stringsAsFactors=FALSE, dec=".")
        subsetDat <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
        
        dt <- strptime(paste(subsetDat$Date, subsetDat$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
        
        png("plot2.png", width=480, height=480)
        
        plot(dt, as.numeric(subsetDat$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
        
        dev.off()
}