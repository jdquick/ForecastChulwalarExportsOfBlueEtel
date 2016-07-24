## Set directory variables
## main directory
maind <- "/ForecastChulwalarExportsOfBlueEtel"

## data directory
datad <- paste(maind, "DATA", sep = "/")

## analysis directory
analysisd <- paste(maind, "ANALYSIS", sep = "/")

## set working directory to data directory
setwd(datad)

#  Transform data into time series
# In order to be able to work with the partial data sets later, these need to be split into individual vectors and converted into times series.

BlueEtelAsIsVector <- c(ImportedAsIsData [58:69,2],ImportedAsIsData [58:69,3],ImportedAsIsData [58:69,4],ImportedAsIsData [58:69,5],ImportedAsIsData [58:69,6],ImportedAsIsData [58:69,7])

BlueEtelPlanVector <- c(ImportedPlanData[58:69,2],ImportedPlanData[58:69,3],ImportedPlanData[58:69,4],ImportedPlanData[58:69,5],ImportedPlanData[58:69,6],ImportedPlanData[58:69,7])

# The data is saved as a vector and needs to be converted into a time series
BlueEtelAsIs <- ts(BlueEtelAsIsVector, start=c(2008,1), end=c(2013,12), frequency=12)

BlueEtelPlan <- ts(BlueEtelPlanVector, start=c(2008,1), end=c(2013,12), frequency=12)

# Get total as is for 2014 for forecast comparison
TotalAsIsVector_2014 <- c(ImportedAsIsData[2:13,8])
TotalAsIs_2014 <- ts(TotalAsIsVector_2014, start=c(2014,1), end=c(2014,12), frequency=12)

# Call up the time series to check everything has worked.

str(BlueEtelAsIs)
str(BlueEtelPlan)
