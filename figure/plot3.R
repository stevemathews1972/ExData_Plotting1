plot3<-function(){
      ##setwd("C:/R/Plotting1/ExData_Plotting1")
      data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?")
      data<-subset(data,data$Date %in% c("1/2/2007","2/2/2007"))
      data$Date1<-paste(data$Date,data$Time,sep=", ")
      data$Date1<-strptime(data$Date1, format="%d/%m/%Y, %H:%M:%S")
      plot(data$Date1,data$Sub_metering_1,type="l", xlab="",ylab="Energy Sub metering")
      points(data$Date1,data$Sub_metering_2,type="l", xlab="",ylab="Energy Sub metering",col="red")
      points(data$Date1,data$Sub_metering_3,type="l", xlab="",ylab="Energy Sub metering",col="blue")
      legend("topright",bty="y",pch=1,cex=0.8 ,col=c("black","blue","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
      dev.copy(png,file="plot3.png",width=480,height=480)
      dev.off()
}
