## With function plot2 we produce our second plot and store it plot2.png

    plot2 <- function() {
      plot(e_SData$timestamp,e_SData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
      dev.copy(png, file="plot2.png", width=480, height=480)
      dev.off()
  
}

## Displaying the plot on the screen

    plot2()