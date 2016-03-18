# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, 
# make a plot showing the total PM2.5 emission from all sources for 
# each of the years 1999, 2002, 2005, and 2008.

# Check if both data exist. If not, load the data.
if (!"neiData" %in% ls()) {
  neiData <- readRDS("E:/Documents/summarySCC_PM25.rds")
}
if (!"sccData" %in% ls()) {
  sccData <- readRDS("E:/Documents/Source_Classification_Code.rds")
}


library(grDevices)
par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "E:/Desktop/Exploratory-Data-Plotting-Assignment/plot1.png",width = 480, height = 480,units = "px")
totalEmissions <- aggregate(neiData$Emissions, list(neiData$year), FUN = "sum")
# options(scipen=0)
# options(scipen=999)
plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in the United States from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()