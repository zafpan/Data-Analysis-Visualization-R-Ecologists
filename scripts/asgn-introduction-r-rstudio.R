# Exercise 1

2 - 10
3 * 5
9 / 2
5 - 3 * 2
(5 - 3) * 2
4 ^ 2
8 / 2 ^ 2


# Exercise 2

# converts a mass in kilograms to a mass in grams
mass_kg <- 2.62
mass_g <- mass_kg * 1000
mass_g

# an appropriate mass for a Sylvilagus audubonii (desert cottontail)
mass_lb <- 3.5 
mass_kg <- mass_lb / 2.2046
mass_kg


# Exercise 3

# average white-throated woodrat (Neotoma albigula) weight
grams <- 250
number <- 3
biomass <- grams * number
biomass_kg <- biomass / 1000
biomass_kg

# better variable naming
mass_grams_each <- 250
total_indiv <- 3
biomass <- mass_grams_each * total_indiv
biomass_kg <- biomass / 1000
biomass_kg


# Exercise 4

abs(-15.5)
round(4.483847, 1)
round(3.8)
toupper("species")
tolower("SPECIES")
sq_root <- sqrt(2.6)
sq_root_round <- round(sq_root, 2)
sq_root_round
round(sqrt(2.6), 2)


# Exercise 5

# estimates the total net primary productivity (NPP) per day for two sites
site1_g_carbon_m2_day <- 5
site2_g_carbon_m2_day <- 2.3
site1_area_m2 <- 200
site2_area_m2 <- 450
site1_npp_day <- site1_g_carbon_m2_day * site1_area_m2
site2_npp_day <- site2_g_carbon_m2_day * site2_area_m2
site1_npp_day
site2_npp_day

total_npp_day <- site1_npp_day + site2_npp_day
total_npp_day <- sum(site1_npp_day, site2_npp_day)
sites_diff <- abs(site1_npp_day - site2_npp_day)
total_npp_year <- total_npp_day * 365


# Exercise 6

numbers <- c(5, 2, 26, 8, 16)

length(numbers)
numbers[3]
min(numbers)
max(numbers)
mean(numbers)
numbers[c(1, 2, 3)]
sum(numbers)


# Exercise 7

numbers <- c(7, 6, 22, 5, NA, 42)

min(numbers, na.rm = TRUE)
max(numbers, na.rm = TRUE)
mean(numbers, na.rm = TRUE)
sum(numbers, na.rm = TRUE)


# Exercise 8

# length, width, and height of 10 individuals of the yew Taxus baccata
length <- c(2.2, 2.1, 2.7, 3.0, 3.1, 2.5, 1.9, 1.1, 3.5, 2.9)
width <- c(1.3, 2.2, 1.5, 4.5, 3.1, NA, 1.8, 0.5, 2.0, 2.7)
height <- c(9.6, 7.6, 2.2, 1.5, 4.0, 3.0, 4.5, 2.3, 7.5, 3.2)

volume <- (length * width * height)
sum(volume, na.rm = TRUE)
height[length > 2.5]
height[height > 5]
height[1:5]
volume[1:3]
volume[1:3]
volume_length <- length(volume)
volume[(volume_length-4):volume_length] # last 5 (no matter the length of vector)
volume[-(1:(volume_length-5))] # last 5 (no matter the length of vector)




