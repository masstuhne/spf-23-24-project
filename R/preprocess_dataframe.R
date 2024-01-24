
# functions used for preparing the data frame for different aspects of 
# exploratory analysis

custom_order_months <- function(column, month_column) {
  custom_month_order <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
  
  column <- factor(column, levels = custom_month_order, ordered = TRUE)
}