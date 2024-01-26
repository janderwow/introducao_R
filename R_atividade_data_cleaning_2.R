# data cleaning
install.packages("tidyverse") # data manipulation
install.packages("skimr") # resumo dos dados com facilidade
install.packages("janitor") #contem funcoes para data cleaning

library("tidyverse")
library("skimr")
library("janitor")


hotel_bookings <- read_csv("hotel_bookings.csv", locale = readr::locale(encoding = "latin1"))

head(hotel_bookings)
glimpse(hotel_bookings)
skim_without_charts(hotel_bookings)
str(hotel_bookings)
colnames(hotel_bookings)

arrange(hotel_bookings, -lead_time)
arrange(hotel_bookings, desc(lead_time))

head(hotel_bookings)

hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))

head(hotel_bookings_v2)

max(hotel_bookings$lead_time)

min(hotel_bookings$lead_time)

mean(hotel_bookings$lead_time)

mean(hotel_bookings_v2$lead_time)

hotel_bookins_city <-filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")

head(hotel_bookins_city)
mean(hotel_bookins_city$lead_time)

hotel_summary <-
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(avarage_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))

head(hotel_summary)
glimpse(hotel_summary)

str(hotel_summary)
