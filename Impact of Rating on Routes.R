setwd("D:/Downloads/R studio files/CIA")

library(readxl)
library(tidyr)
library(ggplot2)

Q22<-read_xlsx("D:/Downloads/R studio files/CIA/CIA-4/Book22.xlsx")

Q22<-pivot_longer(Q22, cols=names(Q22)[2:6], names_to = "Rating", values_to = "Routes" )

lines<-ggplot(data=Q22, aes(x=IMPACT, y=Routes, group=Rating))
lines<- lines + geom_line(aes(colour=Rating))
lines<-lines + geom_point(aes(colour=Rating))
lines

head("Book22.xlsx")
