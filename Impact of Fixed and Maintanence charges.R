# Data from the image (assuming labels are correctly identified)
regions <- c("Karnataka", "Maharastra", "Pondicherry", "Tamil Nadu")  # Assuming these labels are from the image
difference <- c(7188, 7781, 8617, 6936)  # Assuming these values are from the image (assuming "Difference" column values)

# Create the data frame
data <- data.frame(Region = regions, Difference = difference)

# Create the bar chart
ggplot(data, aes(x = Region, y = Difference)) +
  geom_bar(stat = "identity", fill = c("red", "green", "blue", "orange"))  +  # Use stat="identity" to plot raw values
  labs(title = "Difference between Fixed and Main Delivery Times",
       x = "Region",
       y = "Difference (minutes)") +
  
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

theme_void()  # Remove unnecessary plot elements (optional)