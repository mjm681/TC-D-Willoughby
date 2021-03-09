setwd("~/TC-D-Willoughby")

colnames_101 <- c("Animal type", "Gender","Animal number", "Animal name", "I&R number",
                  "Birth date", "Group number", "Location number", 
                  "Population number")

colnames_102 <- c("Animal number", "Tag number", "Animal name", "I&R number",
                  "Birth date", "Group number","Dam I&R number",
                  "Sire I&R number")

all_animals_df <- read.csv("Report/101_all_animals.txt", header = F, skip = 1, na.strings = '-')
all_milkcows_df <- read.csv("Report/102_all_milkcows.txt", header = F, skip = 1, na.strings = '-')

colnames(all_animals_df) <- colnames_101
colnames(all_milkcows_df) <- colnames_102

merged <- merge(all_animals_df, all_milkcows_df, by = c('I&R number','Animal number', 
                                                        'Animal name','Birth date',
                                                        'Group number'))

merged$`Birth date` <- as.Date(merged$`Birth date`, format = "%d/%m/%Y")

dads <- as.data.frame(table(merged$`Sire I&R number`))
