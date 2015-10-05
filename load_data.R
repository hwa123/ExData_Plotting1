## set up local directory
setwd("~/R/Coursera/Exploratory Data Analysis/Project 1")

## load raw data
filename <- "household_power_consumption.txt"
data <- read.table(filename, 
                   header = TRUE, 
                   sep = ";", 
                   colClasses = c("character","character",rep("numeric",7)),
                   na = "?")
#attach(data)

## Data for 2007-02-01 to 2007-02-02
subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
attach(subset)
DT <- paste(Date, Time)
subset$DateTime <- strptime(DT, "%d/%m/%Y %H:%M:%S")
rownames(subset) <- 1:nrow(subset)
attach(subset)
