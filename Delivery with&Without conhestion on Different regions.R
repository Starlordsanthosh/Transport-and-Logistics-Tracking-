# Load the required package
library(ggplot2)

# Create the dataset
congestion_data <- data.frame(
  City = c("Mumbai", "Mumbai", "Mumbai", "Mumbai", "Mumbai", "Mumbai", "Mumbai", "Mumbai", "Mumbai", "Mumbai",
           "Bangalore", "Bangalore", "Bangalore", "Bangalore", "Bangalore", "Bangalore", "Bangalore", "Bangalore", "Bangalore", "Bangalore"),
  Delivery_Time_Without_Congestion = c(65, 70, 60, 75, 68, 72, 65, 70, 63, 68,
                                       75, 80, 70, 85, 72, 78, 75, 80, 73, 77),
  Delivery_Time_With_Congestion = c(135, 145, 130, 155, 140, 150, 135, 145, 138, 142,
                                    160, 170, 155, 175, 158, 165, 160, 170, 162, 167)
)

# Convert the data to a long format
congestion_data_long <- reshape2::melt(congestion_data, id.vars = "City")

# Create the line chart
ggplot(congestion_data_long, aes(x = City, y = value, color = variable, group = variable)) +
  geom_line() +
  geom_point() +
  labs(title = "Delivery Time With and Without Congestion",
       x = "City",
       y = "Delivery Time (minutes)",
       color = "Congestion") +
  scale_color_discrete(labels = c("Without Congestion", "With Congestion"))
