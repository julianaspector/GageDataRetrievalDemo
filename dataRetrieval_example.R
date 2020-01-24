library(dataRetrieval)
library(ggplot2)

siteNumber <- "11303000" # Stanislaus River at Ripon
service <- "iv"
parameterCd <- "00060"

DataAvailable <- whatNWISdata(siteNumber=siteNumber,
                              service=service,
                              parameterCd=parameterCd)

startDate <- "2012-10-01"
endDate <- "2013-09-30"
data <- readNWISuv(siteNumber, parameterCd, startDate, endDate)
data <- renameNWISColumns(data)


ggplot(data) + 
  geom_point(aes(x=data$dateTime, y=data$Flow_Inst)) + 
  ylab("Discharge (cfs)") + 
  xlab("Date") +
  ggtitle("Discharge for Stanislaus River at Ripon for WY 2013")

