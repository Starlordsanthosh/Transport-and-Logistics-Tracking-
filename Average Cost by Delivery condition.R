# Data from the image (assuming labels are correctly identified)
conditions <- c("Cloudy", "Sunny", "Mist", "Partly Cloudy", "Rainy")  # Assuming these labels are from the image
avg_cost <- c(825, 392, 572, 780, 1142)  # Assuming these values are from the image

# Create the data frame
data <- data.frame(Conditions = conditions, Avg_Cost = avg_cost)

# Create the bar chart
ggplot(data, aes(x = Conditions, y = Avg_Cost)) +
  geom_bar(stat = "identity",  Fill = c("green", "red", "orange", "blue"))   +  # Use stat="identity" to plot raw values
  labs(title = "Average Delivery Cost by Condition",
       x = "Climatic Conditions",
       y = "Average Cost (₹)") +
  
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


theme_void()  # Remove unnecessary plot elements (optional)