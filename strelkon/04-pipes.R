install.packages(nycflights13)

library(tidyverse)
library(nycflights13)

flights_delayed <- filter(flights, arr_delay > 120, dep_delay > 120) %>% left_join(y=airlines, by = c("carrier","carrier"))

ggplot(data = flights_delayed) + geom_point(mapping = aes (x = dep_delay, y=arr_delay, color = name))

flight_speed <- mutate(flights,
                       air_hours = air_time / 60,
                       speed = distance / air_hours,
                       month_name = month.name[month]) %>%
  left_join(y = airlines, by = c("carrier", "carrier")) %>%
  select(name, air_hours, speed, month_name) %>%
  filter(air_hours < 2, air_hours > 1)

ggplot(data = flight_speed) + geom_histogram(mapping = aes(x=speed), bins = 100)

ggplot(data = flight_speed) + geom_boxplot(mapping = aes(x = name, y=speed)) +
  theme(axis.text.x = element_text(angle = 90))