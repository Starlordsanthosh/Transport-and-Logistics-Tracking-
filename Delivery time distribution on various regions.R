setwd("D:/Downloads/R studio files/CIA")

library(readxl)

delivery_data1<-read_xlsx("Book7.xlsx")
# Display the first few rows
#For creating a scatter plot 
head(delivery_data1)

ggplot(delivery_data1, aes(x = Area, y = Delivery_Time, color = Area)) +
  geom_point() +
  labs(title = "Delivery Time Distribution (Urban vs.Sub_urban vs. Rural)",
       x = "Area",
       y = "Delivery Time (minutes)",
       color = "Area") +
  
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
theme_void()  # Remove unnecessary plot elements (optional)


#For creating a bar chat to show average time taken 

# No data provided from the image, so assume sample data
area_data <- c("Urban", "Suburban", "Rural")
delivery_time <- c(17.8, 29.5, 53.7)  # Assuming delivery time in minutes

# Create the data frame (adjust if you have actual data)
data <- data.frame(Area = area_data, Average_delivery_Time = delivery_time)

# Create the bar chart
ggplot(data, aes(x = Area, y = Average_delivery_Time)) +
  geom_bar(stat = "identity", color = "skyblue") +  # Use stat="identity" to plot raw values
  labs(title = "Average Delivery Time by Area",
       x = "Area",
       y = "Average_Delivery Time (minutes)") +
  
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
theme_void()  # Remove unnecessary plot elements (optional)