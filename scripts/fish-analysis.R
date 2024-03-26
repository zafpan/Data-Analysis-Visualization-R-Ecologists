# Introduce yourself to Git
library(usethis)
use_git_config(user.name = "zafpano", user.email = "pzaf@ymail.com")

# Read in data to new R script
library(dplyr)
fish_data <- read.csv("data_raw/Gaeta_etal_CLC_data.csv")

# Create new categorical size column
fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 300, "big", "small"))

# Keep the fish with a scalelength of more than 1 mm
fish_data_lgth_1mm_plus <- fish_data %>% 
  filter(scalelength > 1)
