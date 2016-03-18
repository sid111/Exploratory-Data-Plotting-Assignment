
# Have total emissions from PM2.5 decreased in the Baltimore City, 
# Maryland (fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.

# Check if both data exist in the environment. If not, load the data.
if (!"neiData" %in% ls()) {
  neiData <- readRDS("E:/Documents//summarySCC_PM25.rds")
}
if (!"sccData" %in% ls()) {
  sccData <- readRDS("E:/Documents/Source_Classification_Code.rds")
}
subset <- neiData[neiData$fips == "24510", ] 



par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "E:/Desktop/Exploratory-Data-Plotting-Assignment/plot2.png", 
    width = 480, height = 480, 
    units = "px")
totalEmissions <- aggregate(subset$Emissions, list(subset$year), FUN = "sum")

plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in Baltimore City from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()