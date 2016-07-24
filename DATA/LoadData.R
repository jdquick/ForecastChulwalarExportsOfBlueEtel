## Set directory variables
## main directory
maind <- "/ForecastChulwalarExportsOfBlueEtel"

## data directory
datad <- paste(maind, "DATA", sep = "/")

## analysis directory
analysisd <- paste(maind, "ANALYSIS", sep = "/")

## set working directory to data directory
setwd(datad)

#These data files must be present in the data subdirectory
ImportedAsIsData <- read.csv(file="ImportedAsIsDataChulwalar.csv", header = F, sep=";", fill = T) 
ImportedPlanData <- read.csv(file="ImportedPlanDataChulwalar.csv", header = F, sep=";", fill = T) 
ImportedIndicators <- read.csv(file="ImportedIndicatorsChulwalar.csv", header = F, sep=";", fill = T)
str(ImportedAsIsData)
str(ImportedPlanData)
str(ImportedIndicators)
