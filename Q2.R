library(tidyverse)
library(knitr)

# Set seed for reproducibility
set.seed(123)

years <- seq(2004, 2023)

data <- tibble(
  year = years,
  hospital_1 = runif(length(years), min = 1000, max = 6000),
  hospital_2 = runif(length(years), min = 1000, max = 6000),
  hospital_3 = runif(length(years), min = 1000, max = 6000),
  hospital_4 = runif(length(years), min = 1000, max = 6000),
  hospital_5 = runif(length(years), min = 1000, max = 6000),
)

head(data)

# Test that there are 6 columns (1)
num_cols <- ncol(data)
expected_num_cols <- 6
test_num_cols <- num_cols == expected_num_cols
test_num_cols

# Test that there are 20 years (2)
data$year |> length() == 20

# Test that hospital 1 is above 1000
data$hospital_1 |> min() >= 1000
# Test that hospital 1 is below 6000
data$hospital_1 |> max() <= 6000

# Test that hospital 2 is above 1000
data$hospital_2 |> min() >= 1000
# Test that hospital 2 is below 6000
data$hospital_2 |> max() <= 6000

# Test that hospital 3 is above 1000
data$hospital_3 |> min() >= 1000
# Test that hospital 3 is below 6000
data$hospital_3 |> max() <= 6000

# Test that hospital 4 is above 1000
data$hospital_4 |> min() >= 1000
# Test that hospital 4 is below 6000
data$hospital_4 |> max() <= 6000

# Test that hospital 5 is above 1000
data$hospital_5 |> min() >= 1000
# Test that hospital 5 is below 6000
data$hospital_5 |> max() <= 6000

# Check if all values are numeric
numeric_check <- all(sapply(data, is.numeric))
print(paste("Numeric Check:", ifelse(numeric_check, "Passed", "Failed")))
