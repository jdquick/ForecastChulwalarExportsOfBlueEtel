require(fpp)
require(forecast)
# Basic data analysis

BlueEtelAsIs_lm <- lm(BlueEtelAsIs ~ BlueEtelPlan , data = BlueEtelAsIs)
summary(BlueEtelAsIs_lm)

BlueEtelAsIs_tslm <- tslm(BlueEtelAsIs ~ BlueEtelPlan )
summary(BlueEtelAsIs_tslm)

## Use STL function for decomposition
# The time series can be analysed using the stl function in order to seperate the trend, seasonality and remainder (remaining coincidential) components from one another.

BlueEtelAsIs_stl <- stl(BlueEtelAsIs , s.window=5)

# Now the individual time series can be shown graphically and tabularly. 
# The trend of the blue etel exports is almost linear. 
# A relatively uniform seaonality can be seen.

par(mfrow=c(3,2))
plot(BlueEtelAsIs_stl, col="black", main="BlueEtelAsIs_stl")


