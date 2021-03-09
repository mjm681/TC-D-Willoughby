##### Lactation Data #####
setwd("~/TC-D-Willoughby")

colnames_3a08 <- c("Animal number", "Animal name", "Lactation",
                   "Lactation days in milk", "Lactation production",
                   "Lactation day 100", "Lactation day 305",
                   "Lactation fat", "Lactation protein", 
                   "Lactation cellcount")

colnames_3b06 <- c("Animal number", "Animal name", "Lactation",
                   "Lactation days in milk", "Lactation production",
                   "Lactation day 100", "Lactation day 305",
                   "Lactation fat", "Lactation protein", 
                   "Lactation cellcount")

a_lactation_data <- read.csv("Report/3a08_lactation_milk_data.txt", header = F, 
                             skip = 1, na.strings = '-', col.names = colnames_3a08)

b_lactation_data <- read.csv("Report/3b06_lactation_milk_data.txt", header = F, 
                             skip = 1, na.strings = '-', col.names = colnames_3b06)

all.equal(a_lactation_data, b_lactation_data)

a_lactation_data$Lactation <- as.factor(a_lactation_data$Lactation)
a_lactation_data$Lactation <- factor(a_lactation_data$Lactation, ordered = T,
                                        levels = c("1","2","3","4","5","6","7","8",
                                                   "9","10","11","12","13"))

a_lactation_data$Animal.number <- as.factor(a_lactation_data$Animal.number)

library(ggplot2)

ggplot(a_lactation_data, aes(x = Animal.number, y = Lactation.production, fill = Lactation)) +
  geom_bar(stat = "identity", position = "stack") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))


ggplot(a_lactation_data, aes(x = Animal.number, y = Lactation.production, fill = Lactation)) +
  geom_bar(stat = "identity", position = "fill")

ggplot(a_lactation_data, aes(x = Lactation, y = Lactation.production)) +
  geom_point()

ggplot(a_lactation_data, aes(x = Animal.number, y = Lactation.production, fill = Lactation)) +
  geom_point()