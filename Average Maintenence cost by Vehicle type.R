vehicle_type <- c("Petrol(Thousands)", "EV(LKS)")  # Assuming these labels are from the image
avg_maintenance_cost <- c(43.2, 34)  # Assuming these values are from the image

# Create the data frame
data <- data.frame(Vehicle_Type = vehicle_type, Avg_Maintenance_Cost = avg_maintenance_cost)

# Create the bar chart
ggplot(data, aes(x = Vehicle_Type, y = Avg_Maintenance_Cost)) +
  geom_bar(stat = "identity", color = "steelblue") +  # Use stat="identity" to plot raw values
  labs(title = "Average Maintenance Cost by Vehicle Type",
       x = "Vehicle Type",
       y = "Average Maintenance Cost (₹)") +
  
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

theme_void()  # Remove unnecessary plot elements (optional)