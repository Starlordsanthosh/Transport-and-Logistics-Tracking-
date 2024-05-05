# Load the required package
library(ggplot2)

# Create the dataset
weather_data <- data.frame(
  Condition = c("condition", "partly cloudy", "patchy light rain with thunder", "Sunny"),
  Count = c(0, 9, 6, 30)
)

# Remove the first row (header row)
weather_data <- weather_data[-1, ]

# Create the bar chart
ggplot(weather_data, aes(x = Condition, y = Count, fill = Condition)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Weather Conditions",
       x = "Condition",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))