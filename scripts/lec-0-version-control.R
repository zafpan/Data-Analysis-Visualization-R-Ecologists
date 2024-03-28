# Introduce yourself to Git
library(usethis)
use_git_config(user.name = "zafpano", user.email = "pzaf@ymail.com")

# Read in data to new R script
library(dplyr)
fish_data <- read.csv("data_raw/Gaeta_etal_CLC_data_1.csv")

# Create new categorical size column
fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 250, "large", "small"))

# Keep the fish with a scalelength of more than 1 mm
fish_data_lgth_1mm_plus <- fish_data %>% 
  filter(scalelength > 0.5)

# load package that includes ggplot
library(tidyverse)

# the relationship between the length of each fish’s body 
# and the size of its scale across the different lakes sampled in these data
ggplot(data = fish_data_lgth_1mm_plus, mapping = aes(x = length, y = scalelength, color = lakeid)) +
  geom_point()

# Plot histogram of scale length by categorical size
plot_scalelength <- ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins = 10)

plot_scalelength

# export plot histogram
ggsave("scale_hist_by_length.png", plot_scalelength, width = 15, height = 10)

