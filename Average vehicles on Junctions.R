junction_data <- c(13.56522, 5.64, 10.04)

junctions <- c("Junction 1", "Junction 2", "Junction 3") # Assuming junction labels are provided

total_vehicles <- sum(junction_data)

data <- data.frame(Junctions = junctions, Average_Vehicles = junction_data)

library(ggplot2)

ggplot(data, aes(x = "", y = Average_Vehicles, fill = Junctions)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = paste0("Average Vehicles per Junction (Total:", total_vehicles, ")"),
       caption = "Junctions",
       fill = "") +
  theme_void()
