# Basic data analysis

## Correlation with external indicators

#The indicators will be converted into individual  vectors and subsequently converted into time series. The correlation of the indicators will then be tested against the As Is exports for Chulwalar. 

# Monthly Satisfaction Index (SI) government based data

cor(BlueEtelAsIs , SIGov)

# There is a small negative correlation between the Blue Etel and the 
# monthly satisfaction index at -4%

cor(BlueEtelAsIs , Temperature)

# There is a large negative correlation between the Blue Etel and the temperature
# at -64%

cor(BlueEtelAsIs , Births)

# There is a relatively small correlation between the Blue Etel and births
# at -28%. 

cor(BlueEtelAsIs , SIExtern)

# There is a relative small positive correlation between the Blue Etel and
# the external monthly satisfaction index at 16%

cor(BlueEtelAsIs , UrbanoExports)

# There is a relative small positive correlation between the Blue Etel and
# the yearly exports from Urbano at 17%

cor(BlueEtelAsIs , GlobalisationPartyMembers)

# There is a very small positive correlation between the Blue Etel and 
# the number of globalisation party members at 9%

cor(BlueEtelAsIs , AEPI)

# There is a relative small positive correlation between the Blue Eteal and
# the monthly average export price index for Chulwalar

cor(BlueEtelAsIs , PPIEtel)

# There is a relatively small positive correlation between the Blue Etel and
# the monthly producer price index for Etel in Chulwalar

cor(BlueEtelAsIs , NationalHolidays)

# There is a relatively small positive correlation between the Blue Etel and
# the national holidays

cor(BlueEtelAsIs , ChulwalarIndex)

# There is a relatively small positive correlation between the Blue Etel and
# the Chulwalar index

cor(BlueEtelAsIs , Inflation)

# There is virually no correlation (2%) between the Blue Etel and the monthly
# inflation rate in Chulwalar

cor(BlueEtelAsIs , IndependenceDayPresents)

# There is a relatively small positive correlation between the Blue Etel and
# Independence Day presents. 

cor(BlueEtelAsIs , InfluenceNationalHolidays)

# There is a relatively small positive correlation between the Blue Etel and 
# the influence of national holidays at 28%