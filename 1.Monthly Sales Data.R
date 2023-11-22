library(ggplot2)
months <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)
sales_data <- data.frame(Month = months, Sales = sales)
#1
ggplot(sales_data, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "blue") +
  labs(x = "Month", y = "Sales (in $)", title = "Monthly Sales") +
  theme_minimal()
#2
barplot(sales, 
        names.arg = c("January", "February", "March", "April", "May"),
        col = "skyblue",
        main = "Top-Selling Products",
        xlab = "Month",
        ylab = "Sales (in $)",
        border = "black"
)
#3
ggplot(sales_data, aes(x = Month, y = Sales)) +
  geom_point() +
  labs(title = "Monthly Sales",
       x = "Month",
       y = "Sales ($)") +
  theme_minimal()