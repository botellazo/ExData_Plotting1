## With function plot1 we produce our first plot and store it plot1.png

    plot1 <- function() {

      hist(e_SData$Global_active_power,breaks="Sturges",main="Global Active Power",col="red", xlab="Global Active Power (kilowatts)")
      dev.copy(png, file="plot1.png", width=480, height=480)
      dev.off()

}

## Displaying the plot on the screen

    plot1()
