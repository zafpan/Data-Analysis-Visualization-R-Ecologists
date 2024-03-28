# importing shrub-volume-data
shrub_data <- read.csv("data_raw/shrub-volume-data.csv")


# Exercise 1

select(shrub_data, length)
select(shrub_data, site, experiment)
shrub_data %>%
  mutate(area = length * width)
shrub_data %>%
  arrange(length)
shrub_data %>% 
  filter(height > 5)
shrub_data %>% 
  filter(height > 4, width > 2)
shrub_data %>% 
  filter(height > 4 & width > 2)
shrub_data %>% 
  filter(experiment == 1 | experiment == 3)
shrub_data %>% 
  filter(!is.na(height))
shrub_volumes <- shrub_data %>% 
  mutate(volume = length * width * height)
shrub_volumes


# Exercise 2

# importing the data for the monthly variation in precipitation in Gainesville, FL
ppt_data <- read.csv("https://datacarpentry.org/semester-biology/data/gainesville-precip.csv", header = FALSE)
# calculating the mean precipitation (ppt) in each month across years
monthly_mean_ppt <- colMeans(ppt_data)
# plotting the monthly averages as a simple line plot
plot(monthly_mean_ppt, type = "l", xlab = "Month", ylab = "Mean Precipitation")


# Exercise 3

number_of_birds <- c(28, 32, 1, 0, 10, 22, 30, 19, 145, 27, 
                     36, 25, 9, 38, 21, 12, 122, 87, 36, 3, 0, 5, 55, 62, 98, 32, 
                     900, 33, 14, 39, 56, 81, 29, 38, 1, 0, 143, 37, 98, 77, 92, 
                     83, 34, 98, 40, 45, 51, 17, 22, 37, 48, 38, 91, 73, 54, 46,
                     102, 273, 600, 10, 11)

length(number_of_birds)
number_of_birds[42]
sum(number_of_birds)
min(number_of_birds)
max(number_of_birds)
mean(number_of_birds)
number_of_birds[length(number_of_birds)]


# Exercise 4

surveys <- read.csv("data_raw/surveys.csv")

select(surveys, year, month, day, species_id)

surveys_weight_clean <- filter(surveys, !is.na(weight))
surveys_with_weight_kg <- mutate(surveys_weight_clean, weight_kg = weight / 1000)
select(surveys_with_weight_kg, year, species_id, weight_kg)

filter(surveys, species_id == "SH")


# Exercise 5

surveys %>%
  filter(!is.na(weight)) %>%
  mutate(weight_kg = weight / 1000) %>% 
  select(year, species_id, weight_kg)

surveys %>%
  filter(species_id == "SH") %>%
  select(year, month, day, species_id)


# Exercise 6

#convert species_id to lowercase
surveys$species_id <- tolower(surveys$species_id)

surveys %>%
  select(year, month, day, species_id, weight, hindfoot_length) %>% 
  filter(!is.na(weight), !is.na(hindfoot_length), species_id%in%c("dm", "do", "ds")) %>% 
  arrange(species_id, desc(weight)) 



