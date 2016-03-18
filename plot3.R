# Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999¨C2008 for Baltimore City? 
# Which have seen increases in emissions from 1999¨C2008? 
# Use the ggplot2 plotting system to make a plot answer this question.

# Check if both data exist in the environment. If not, load the data.
if (!"neiData" %in% ls()) {
  neiData <- readRDS("E:/Documents/summarySCC_PM25.rds")
}
if (!"sccData" %in% ls()) {
  sccData <- readRDS("E:/Documents/Source_Classification_Code.rds")
}

subset <- neiData[neiData$fips == "24510", ] 


library(ggplot2)
par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "E:/Desktop/Exploratory-Data-Plotting-Assignment/plot3.png", 
    width = 480, height = 480, 
    units = "px")
g <- ggplot(subset, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
dev.off()