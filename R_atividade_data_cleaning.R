install.packages(c("tidyverse","skimr", "janitor"))

library(tidyverse)
library(skimr)
library(janitor)

bookings_df <-read_csv("hotel_bookings.csv", locale = readr::locale(encoding = "latin1"))

head(bookings_df)
str(bookings_df)
glimpse(bookings_df)
colnames(bookings_df)
skim_without_charts(bookings_df)


trimmed_df <- bookings_df %>%
  select(hotel, is_canceled, lead_time) %>%
  rename(hotel_type = hotel)

View(trimmed_df)

# combinando colunas (de datas neste exemplo)

exemplo_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>%
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

View(exemplo_df)

# modificando colunas
exemplo2_df <- bookings_df %>%
  mutate(guests = adultos, `crianas`, `bebs`)

head(exemplo2_df)

exemplo3_df <- bookings_df %>%
  summarise(average_lead_time = mean(lead_time), number_canceled = sum(is_canceled))

head(exemplo3_df)

