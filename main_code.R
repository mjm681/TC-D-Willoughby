##### Setting Up Environment #####

setwd("~/TC-D-Willoughby")

set.seed(333)

library(stringr)
library(ggplot2)

##### All Possible Headings of Data #####

# All Possible Headings of Data in Alphabetical Order

headings <- list("Activity regime",
                 "Animal name",
                 "Animal number",
                 "Animal type",
                 "Attachment ease",
                 "Average milkings",
                 "Average 24-H conductivity",
                 "Average 24-H production",
                 "Average 24-H production rate",
                 "Back flush",
                 "Birth date",
                 "C. Allowance feed A",
                 "C. Allowance feed B",
                 "C. Automatic meal calculation",
                 "C. Bonus A",
                 "C. Bonus B",
                 "C. Bonus Days",
                 "C. Calc Alg.",
                 "C. Current Lactation All A",
                 "C. Current Lactation All B",
                 "C. Current Lactation Eaten A",
                 "C. Current Lactation Eaten B",
                 "C. Curve A",
                 "C. Curve B",
                 "C. Curve startdate",
                 "C. Daily Eaten A",
                 "C. Daily Feed A",
                 "C. Daily Eaten B",
                 "C. Daily Feed B", 
                 "C. Dist. Alg.",
                 "C. Eating rate",
                 "C. Feed Curve",
                 "C. Feed Rest",
                 "C. Feeding Enabled",
                 "C. KgM+ A",
                 "C. KgM+ B",
                 "C. KgM+ Apply",
                 "C. KgM+ Curve",
                 "C. Lactation Eaten A",
                 "C. Lactation Eaten B",
                 "C. Last Fed",
                 "C. Max Meal",
                 "C. Min Meal",
                 "C. Noof meals",
                 "C. Rec Eaten A",
                 "C. Rec Eaten B",
                 "C. Rec Eaten C",
                 "C. Rec Eaten D",
                 "C. Rec Loc. Index",
                 "C. Rec. Stamp",
                 "C. Step A",
                 "C. Step B",
                 "C. Target A",
                 "C. Target B",
                 "C. Today All. OOP A",
                 "C. Today All. OOP B",
                 "C. Today Uneaten OOP A",
                 "C. Today Uneaten OOP B",
                 "C. Wait time",
                 "C. Ytd All. OOP. A",
                 "C. Ytd All. OOP. B", 
                 "C. Ytd Uneaten OOP. A",
                 "C. Ytd Uneaten OOP. B", 
                 "C. 24-H All. OOP. A",
                 "C. 24-H All. OOP. B",
                 "C. 24-H Eaten OOP. A",
                 "C. 24-H Eaten OOP. B",
                 "C. 24-H Uneaten OOP. A",
                 "C. 24-H Uneaten OOP. B",
                 "Current lactation day 100",
                 "Current lactation day 305",
                 "Current lactation days",
                 "Current lactation days in milk",
                 "Current lactation fat",
                 "Current lactation production",
                 "Current lactation protein",
                 "Daily conductivity",
                 "Daily date",
                 "Daily milk time",
                 "Daily number failed milkings",
                 "Daily number milkings",
                 "Daily number OK milkings",
                 "Daily number YCO milkings", 
                 "Daily production",
                 "Dam I&R number",
                 "Dev. eve. activity",
                 "Dev. eve. production rate",
                 "Dev. morn. activity",
                 "Dev. morn. production rate",
                 "Dev. noon activity",
                 "Dev. noon production rate",
                 "Dev. 24-H activity",
                 "Dev. 24-H conductivity",
                 "Dev. 24-H production",
                 "Disinfect udder",
                 "Enable quarter",
                 "Expected calving",
                 "Expected dry",
                 "Failed milkings %",
                 "Gender",
                 "Group",
                 "Group number",
                 "Hours last milking",
                 "Hours last OK milking",
                 "I&R number",
                 "Lactation",
                 "Lactation cellcount",
                 "Lactation days in milk",
                 "Lactation day 100",
                 "Lactation day 305",
                 "Lactation fat",
                 "Lactation number",
                 "Lactation production",
                 "Lactation protein",
                 "Last calving date",
                 "Last dry off",
                 "Last event",
                 "Last oestrus",
                 "Last pregnancy diagnosis negative",
                 "Last pregnancy diagnosis positive",
                 "Last recorded EOM",
                 "Last recorded milking",
                 "Last recorded production",
                 "Last service",
                 "Location number", 
                 "Long teats",
                 "Manual assistance",
                 "Manual production rate",
                 "Manual production rate Y/N",
                 "Milk fail %",
                 "Milk LF",
                 "Milk LR",
                 "Milk OK %",
                 "Milk RF",
                 "Milk RR",
                 "Milking enabled", 
                 "Milking regime", 
                 "Number of treatments",
                 "Population number",
                 "Samples take",
                 "Sire I&R number",
                 "Tag number",
                 "Target milkings",
                 "Target yield",
                 "Target yield reached %",
                 "Teat EcDr LF",
                 "Teat EcDr LR",
                 "Teat EcDr RF",
                 "Teat EcDr RR",
                 "Rec. activity",
                 "Rec. bottle number",
                 "Rec. conductivity",
                 "Rec. duration",
                 "Rec. EOM",
                 "Rec. frame number",
                 "Rec. FQ mean max.",
                 "Rec. LF deadtime",
                 "Rec. LF FQ cond. dev.",
                 "Rec. LR FQ cond. dev.",
                 "Rec. LF milktime",
                 "Rec. location index",
                 "Rec. LR deadtime", 
                 "Rec. LR milktime",
                 "Rec. production",
                 "Rec. RF deadtime", 
                 "Rec. RF FQ cond. dev.",
                 "Rec. RF milktime",
                 "Rec. RR deadtime",
                 "Rec. RR FQ cond. dev.",
                 "Rec. RR milktime",
                 "Rec. timestamp activity",
                 "Rec. timestamp milk",
                 "Rec. timestamp quarter",
                 "YCO milkings %",
                 "24-H production"
)

date_headings <- headings[c(11,25,78, 115)]

# colnames_5a01 # CHECK THIS ^^^ IS RIGHT, NOT 413

# Making the headings alphabetical

sorted_headings <- as.list(str_sort(headings))


##### Reading in the data and assigning column names #####

# Setting working data directory
setwd("~/TC-D-Willoughby/Report")

# List all files in directory
file_list <- list.files(path = ".")

# Make empty list to read the data into
df_list <- list()

# Remove .txt from file names
file_list_no_txt <- sub(".txt", "", file_list)

### Read in the data from the directory
## If there is no data, return an error
for ( i in seq_along(file_list_no_txt)) {
  df_list[[i]] <- read.csv(file_list[i], header = F, na.strings = c('-',''))
  if (nrow(df_list[[i]]) != 1) {
    df_list[[i]] <- read.csv(file_list[i], header = F, skip = 1, na.strings = c('-',''))
  }
  else {
    print(paste("Error:", file_list_no_txt[i], "file has no data"))
  }
}

# Name elements of data list based on file
names(df_list) <- file_list_no_txt

# Make all dates into standardised format 
##### NEEDS DOING
merged$`Birth date` <- as.Date(merged$`Birth date`, format = "%d/%m/%Y")

df_list$`101_all_animals`$`Birth date`

##### Assigning the column names to the data sheets #####

colnames(df_list[["101_all_animals"]]) <- sorted_headings[c(5,101,4,3,106,12,103,126,140)]
colnames(df_list[["102_all_milkcows"]]) <- sorted_headings[c(4,167,3,106,12,103,86,166)]
colnames(df_list[["3a02_total_milk_prod_20days"]]) <- sorted_headings[c(79,4,85,78,80)]

colnames(df_list[["3a08_lactation_milk_data"]]) <- sorted_headings[c(3,4,107,111,114,109,110,112,115,108)]

colnames(df_list[["3b02_total_milk_last_20days"]]) <- sorted_headings[c(79,4,82,83,84,81,85,80,78)]


##### Genetics #####

setwd("~/TC-D-Willoughby")

# Merge all the genetic info on the cows
merged_genetics <- merge(df_list[["101_all_animals"]], df_list[["102_all_milkcows"]], by = c('I&R number','Animal number',
                                                                                             'Animal name','Birth date',
                                                                                             'Group number'))


# Make date into standardised format 
merged_genetics$`Birth date` <- as.Date(merged_genetics$`Birth date`, format = "%d/%m/%Y")

# Investigating Sires
cow_dads <- as.data.frame(table(merged_genetics$`Sire I&R number`))
colnames(cow_dads) <- c("Sire I&R number", "Number of Offspring")

# Order dataframe of sires
attach(cow_dads)
cow_dads <- cow_dads[order(cow_dads$`Number of Offspring`, decreasing = T ),]
detach(cow_dads)

# Plot how many offspring each sire sired
ggplot(cow_dads, aes(x = reorder(`Sire I&R number`, -`Number of Offspring`), y = `Number of Offspring`)) +
  geom_bar(stat = "identity") +
  theme(axis.text.x=element_text(angle=60, hjust=1))

# Dams and calves
related_dams_calves <- merged_genetics[1,]
related_dams_calves <- related_dams_calves[-1,]

for ( i in 1:nrow(merged_genetics) ) {
  if ( (merged_genetics$`I&R number`[i] %in% merged_genetics$`Dam I&R number`) == T ) {
    related_dams_calves <- rbind(related_dams_calves, merged_genetics[i,])
  }
}

##### 3a02_total_milk_prod_20days #####

last_20_days <- df_list$`3a02_total_milk_prod_20days`
last_20_days$`Animal number` <- as.factor(last_20_days$`Animal number`)

### Linear Regression

ggplot(last_20_days, aes(x = `Daily milk time`, y = `Daily production`, color = `Animal number` )) +
  geom_point() +
  geom_smooth(method = "lm", se = F) # Shows linear regression for each cow

# Simple Linear Regression
lm_production_milktime <- lm(`Daily production`~`Daily milk time`, data = last_20_days)
summary(lm_production_milktime)

model_prediction <- data.frame(`Predicted production` = predict(lm_production_milktime, last_20_days),
                               `Daily milk time` = last_20_days$`Daily milk time`)

colnames(model_prediction) <- c("Predicted production", "Daily milk time")

ggplot(last_20_days, aes(x = `Daily milk time`, y = `Daily production`)) +
  geom_point(aes(color = `Animal number`)) +
  geom_line(data = model_prediction, aes(x = `Daily milk time`,
                                         y = `Predicted production`))

# , color = `Animal number`
#stat_summary(fun.data=lm_production_milktime)

# Multiple linear regression
lm_production_milktime_animalnumber <- lm(`Daily production`~`Daily milk time` + `Animal number`, data = last_20_days)
summary(lm_production_milktime_animalnumber)

model_prediction_animal_number <- data.frame(`Predicted production` = predict(lm_production_milktime_animalnumber, last_20_days),
                                             `Daily milk time` = last_20_days$`Daily milk time`)

colnames(model_prediction_animal_number) <- c("Predicted production", "Daily milk time")

ggplot(last_20_days, aes(x = `Daily milk time`, y = `Daily production`)) +
  geom_point(aes(color = `Animal number`)) +
  geom_line(data = model_prediction_animal_number, aes(x = `Daily milk time`,
                                                       y = `Predicted production`))

# Function to perform linear regression on each animal separately
my_lm <- function(df) {
  summary(lm(`Daily production`~`Daily milk time`, data = df))
}

# Performing linear regression
regressions <- by(last_20_days, last_20_days$`Animal number`, my_lm)

# Using broom pacakge

install.packages("broom")
library(broom)

glance(lm_production_milktime_animalnumber)
