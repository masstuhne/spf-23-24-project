library(tidyverse)

# root is SPF-23-24, read_csv is from root / setwd(.../SPF-23-24)

csv_file_path <- "./data/hotel_bookings_01.csv"
new_csv_file_path <- "./data/hotel_bookings_02.csv"

df <- read_csv(csv_file_path)

column_to_modify <- "is_canceled"

df[, column_to_modify] <- ifelse(df[, column_to_modify] == 1, T, F)

column_to_modify <- "is_repeated_guest"

df[, column_to_modify] <- ifelse(df[, column_to_modify] == 1, T, F)

write_csv(df, file = new_csv_file_path)

