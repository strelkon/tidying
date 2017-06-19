library(tidyverse)
library(magrittr)
as_tibble(iris)
tibble(
  x = 1:5,
  y = 1,
  z = x^2 + y
) %>% View()

tribble(~x,~y,~z,
        "a",2,3.6,
        "b",1,8.5)
tb <- tibble(
  `:)` = "smile",
  ` ` = "space",
  `2000` = "number"
)

tb %>% 
  select(`:)`)

tb %>%
  .$`:)`

heights_1 <- read_csv("data/heights.csv")
heights_2 <- read.csv("data/heights.csv")

challenge <- read_csv(readr_example("challenge.csv"))

problems(challenge)

challenge <- read_csv(
  readr_example("challenge.csv"), 
  col_types = cols(
    x = col_double(),
    y = col_character()
)
)

problems(challenge)

challenge

tail(challenge)

challenge <- read_csv(
  readr_example("challenge.csv"), 
  col_types = cols(
    x = col_double(),
    y = col_date()
  )
)

tail(challenge)

write_csv(challenge, "data/challenge.csv")
