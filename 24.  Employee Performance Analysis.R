library(ggplot2)
sales_data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

#a
ggplot(sales_data, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "Monthly Sales Trend",
       x = "Month",
       y = "Sales (in $)") +
  theme_minimal()

#b
ggplot(sales_data, aes(x = Month, y = Sales)) +
  geom_line(color = "blue") +
  geom_point(color = "blue") +
  labs(title = "Monthly Sales Trend",
       x = "Month",
       y = "Sales (in $)") +
  theme_minimal()

#c
unique(sales_data$Month)
# Remove rows with missing values in the "Sales" column
sales_data <- sales_data[complete.cases(sales_data$Sales), ]

# Now, you can create the autocorrelation plot
acf(sales_data$Sales, main = "Autocorrelation Plot: Monthly Sales", lag.max = length(sales_data$Sales) - 1)
