## We read the entire ser of data. Looking forward to read only the data I need

  e_Data<-read.csv2("household_power_consumption.txt")

## We convert the column Date to Date format by using function as.Date  
  
  e_Data$Date<-as.Date(e_Data$Date, "%d/%m/%Y")

## We define d1 and d2 to extract the data we are going to work with 
## Storing the result in e_SData that becomes are new data set  
  
    d1<-as.Date('2007-02-01')
    d2<-as.Date('2007-02-02')
    e_SData<-subset(e_Data,e_Data$Date==d1|e_Data$Date==d2)

## Converting the data into numeric so we can plot it
  
    e_SData$Global_active_power<-as.numeric(as.character(e_SData$Global_active_power))
    e_SData$Global_reactive_power <- as.numeric(as.character(e_SData$Global_reactive_power))
    e_SData$Voltage <- as.numeric(as.character(e_SData$Voltage))
    e_SData <- transform(e_SData, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
    e_SData$Sub_metering_1 <- as.numeric(as.character(e_SData$Sub_metering_1))
    e_SData$Sub_metering_2 <- as.numeric(as.character(e_SData$Sub_metering_2))
    e_SData$Sub_metering_3 <- as.numeric(as.character(e_SData$Sub_metering_3))
  
  