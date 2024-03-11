# Example of MUGU district only

# Potential Evapotranspiration Calculation

#install.packages("SPEI")
library(SPEI)

data <- read.csv("C:/GIIS/Palmer Drought Severity Index (PDSI)/Data/test.csv")

data$PET <- hargreaves(Tmin = data$minTemp, Tmax = data$maxTemp, lat = 29.32)

data$PET

# Palmer Drought Severity Index (PDSI) 

#scPDSI is not available in CRAN, so we use github instead.

#library(devtools)
#install_github("Sibada/scPDSI")

library(scPDSI)

pdsi_data <- pdsi(data$totalPrecp, data$PET, start = 1970, sc = FALSE)
pdsi_data

plot(pdsi_data)

# pixel wise 

# calculate pixel wise and then we have to plot according to the palika wise, like in which area of palika there has been a lot of drought. 


