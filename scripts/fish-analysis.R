# Introduce yourself to Git
library(usethis)
use_git_config(user.name = "zafpano", user.email = "pzaf@ymail.com")

# Read in data to new R script
library(dplyr)
fish_data <- read.csv("data_raw/Gaeta_etal_CLC_data.csv")

fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 200, "big", "small"))
