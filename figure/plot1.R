plot1()plot1<-function(){
      ##setwd("C:/R/Plotting1/ExData_Plotting1")
      data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?")
      data<-subset(data,data$Date %in% c("1/2/2007","2/2/2007"))
      data$Date1<-paste(data$Date,data$Time,sep=", ")
      data$Date1<-strptime(data$Date1, format="%d/%m/%Y, %H:%M:%S")
      hist(data$Global_active_power,col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")
      dev.copy(png,file="plot1.png",width=480,height=480)
      dev.off()
}
