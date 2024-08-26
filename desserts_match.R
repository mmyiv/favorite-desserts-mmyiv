library(tidyverse)
library(here)
library(stringr)
library(rvest)


favorite_data <- read_csv(here("data", "favorite_desserts.csv"))


iconic_data <- iconic_data %>%
  mutate(dessert = tolower(dessert))

favorite_data <- favorite_data %>%
  mutate(dessert = Favorite_dessert) %>%
  mutate(dessert = tolower(dessert))

dessert_match <- inner_join(favorite_data, iconic_data, by = "dessert")
