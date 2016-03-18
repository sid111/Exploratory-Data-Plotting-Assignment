library(R.oo)
library(R.utils)

# Load the data.

neiData <- readRDS("E:/Documents/summarySCC_PM25.rds")
sccData <- readRDS("E:/Documents/Source_Classification_Code.rds")

head(neiData)
head(sccData)
dim(neiData) # 6497651   6
dim(sccData) # 11717    15