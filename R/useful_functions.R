create_revenue_per_month_graph <- function(data, title) {
  ggplot(data, aes(x = interaction(arrival_date_month, arrival_date_year, sep = " - "),
                                   y = est_revenue, fill = hotel)) +
    geom_bar(stat = "identity", position = "dodge") +
    geom_text(aes(label =round(est_revenue, 2)), vjust = -0.5, size = 3) +
    labs(x = "month", y = "revenue")
}