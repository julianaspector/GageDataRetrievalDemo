library(CDECRetrieve)
library(ggplot2)

MOK_available <- cdec_datasets(station="MOK")

MOK_data <- cdec_query(station="MOK",
                       sensor_num=25,
                       start_date="2018-10-01",
                       end_date="2019-09-30",
                       dur_code = "E")

ggplot(MOK_data) + 
  geom_point(aes(x=datetime, y=parameter_value)) + 
  ylab(expression("Temperature " (degree*F))) + 
  xlab("Date") +
  ggtitle("Temperature for Mokelumne River at San Joaquin River during WY 2019")
