if(!"load_data.R" %in% list.files()) {
  setwd("~/R/Coursera/Exploratory Data Analysis/Project 1")
}

source("load_data.R")
png(filename = "plot1.png",
    width = 480, 
    height = 480,
    units = "px", bg = "transparent")
hist(Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0,1200))
dev.off()