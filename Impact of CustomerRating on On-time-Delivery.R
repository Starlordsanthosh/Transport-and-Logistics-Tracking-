setwd("D:/Downloads/R studio files/CIA")

library(readxl)

# Convert the data to a data frame
Q33<-read_xlsx("Book3.xlsx")

colnames(Q33) <- c("OnTimeDelivery", "CustomerRating")

library(ggplot2)

# Create the bar chart
ggplot(data=Q33, aes(x = CustomerRating, fill = factor(OnTimeDelivery))) +
  geom_bar(position = "dodge") +
  labs(title = "Customer Rating and On-Time Delivery", x = "Customer Rating", y = "Count", fill = "On-Time Delivery") +
  scale_fill_discrete(labels = c("No", "Yes"))
