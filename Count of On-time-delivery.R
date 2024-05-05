setwd("D:/Downloads/R studio files")

library(readxl)
library(tidyr)
library(ggplot2)

Q11<-read_xlsx("Book2.xlsx")

Q11<-pivot_longer(Q11, cols = c("0","1"), names_to = "on_time_delivery", values_to = "Count")

#create benderarchat

barchart<-ggplot()
barchart<-barchart + geom_col(data = Q11, aes(x=IMPACT, y=Count, fill=on_time_delivery), position = "dodge")
barchart
