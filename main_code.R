##### Setting Project Woking Directory #####

setwd("~/TC-D-Willoughby")

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

# colnames_5a01 # CHECK THIS ^^^ IS RIGHT, NOT 413

# Checking the headings are alphabetical

isFALSE(is.unsorted(headings, strictly = T))



#####


colnames_101 <- c("Animal type", "Gender", "Animal name", "I&R number",
                  "Birth date", "Group number", "Location number", 
                  "Population number")

colnames_102 <- c("Animal number", "Tag number", "Animal name", "I&R number",
                  "Birth date", "Group number","Dam I&R number",
                  "Sire I&R number")

colnames_3a02 <- c("Daily date", "Animal number", "Daily production",
                   "Daily conductivity", "Daily milk time")

colnames_3a06 <- c("Animal number", "I&R number", "Rec. timestamp milk",
                   "Rec. EOM", "Rec. production", "Rec. frame number",
                   "Rec. bottle number", "24-H production")

colnames_3a07 <- c("Animal number", "Group", "Lactation number",
                   "Current lactation days", "Average 24-H production",
                   "24-H production", "Average milkings", "Last event")


colnames_3a08 <- c("Animal name", "Animal number", "Lactation", 
                   "Lactation days in milk", "Lactation production",
                   "Lactation day 100", "Lactation day 305", 
                   "Lactation fat", "Lactation protein", "Lactation cellcount")

colnames_3a10 <- c("Animal number", "Tag number", "Group number",
                   "Rec. timestamp milk", "Rec. production", 
                   "Rec. conductivity", "Rec. duration", "Rec. location index")

colnames_3a17 <- c("Animal number", "Group number", "Tag number", 
                   "Lactation number", "Current lactation days",
                   "Average 24-H production", "24-H production", 
                   "Last recorded milking", "Hours last milking")

colnames_3b01 <- c("Animal number", "Group number", "Lactation number",
                   "Current lactation days", "Average 24-H production",
                   "Dev. 24-H production", "Average 24-H conductivity",
                   "Dev. 24-H conductivity")

colnames_3b02 <- c("Daily date", "Animal number", "Daily number OK milkings",
                   "Daily number YCO milkings", "Daily number failed milkings",
                   "Daily production", "Daily milk time", "Daily conductivity")

colnames_3b05 <- c("Animal number", "Milking enabled", "Milking regime", 
                   "Milk OK %", "Milk fail %", "Average 24-H production",
                   "Manual production rate Y/N","Manual production rate",
                   "Average 24-H production rate", "Target yield", 
                   "Target milkings", "Samples take")

colnames_3b06 <- c("Animal number", "Animal name", "Lactation",
                   "Lactation days in milk", "Lactation production",
                   "Lactation day 100", "Lactation day 305",
                   "Lactation fat", "Lactation protein", 
                   "Lactation cellcount")

colnames_3b07 <- c("Animal number", "Animal name", "Group number",
                   "Lactation number", "Current lactation days",
                   "24-H production", "Average 24-H production",
                   "Sire I&R number")

colnames_3b08 <- c("Animal number", "Group number", "Rec. timestamp milk",
                   "Rec. conductivity", "Rec. duration", "Rec. location index",
                   "Rec. EOM")

colnames_401 <- c("Animal number", "Group number", "Current lactation days",
                  "Average 24-H production", "24-H production", "Hours last OK milking",
                  "Last recorded milking", "Last recorded EOM",
                  "Last recorded production", "Average 24-H production rate",
                  "Target yield", "Average milkings", "Target yield reached %")

colnames_402 <- c("Daily date", "Animal number", "Daily number OK milkings",
                  "Daily number YCO milkings", "Daily number failed milkings",
                  "Daily production", "Daily milk time", "Daily conductivity")


colnames_403 <- c("Animal number", "Daily date", "Average 24-H production",
                  "Target yield", "Average milkings", "Target milkings",
                  "Daily number milkings", "Daily number OK milkings",
                  "Daily number failed milkings", "Daily number YCO milkings",
                  "Attachment ease")

colnames_404 <- c("Animal number", "Average 24-H production", "Enable quarter",
                  "Manual assistance", "Number of treatments", "Long teats",
                  "Back flush", "Disinfect udder", "Milk LF", "Milk LR",
                  "Milk RF", "Milk RR")

colnames_405 <- c("Rec. location index", "Rec. production","Rec. duration", 
                  "Rec. EOM", "Rec. timestamp milk")

colnames_406 <- c("Animal number", "Average 24-H production", "Rec. timestamp milk",
                  "Rec. location index", "Rec. production", "Rec. conductivity",
                  "Rec. duration", "Rec. EOM")

colnames_407 <- c("Rec. location index", "Rec. timestamp quarter", "Rec. LF deadtime", 
                  "Rec. LR deadtime", "Rec. RF deadtime", "Rec. RR deadtime", 
                  "Rec. LF milktime", "Rec. LR milktime", "Rec. RF milktime", 
                  "Rec. RR milktime")

colnames_408 <- c("Daily date", "Animal number", "Daily production", "Daily number milkings",
                  "Daily number OK milkings","Daily number failed milkings", "Daily number YCO milkings")

colnames_409 <- c("Animal number", "Current lactation days", "Average 24-H production",
                  "Target yield", "Average milkings", "Target milkings",
                  "YCO milkings %", "Failed milkings %", "Attachment ease")

colnames_410 <- c("Animal number", "Group number", "Current lactation days", "Average 24-H production",
                  "24-H production", "Hours last OK milking", "Last rec. milking", "Last rec. production",
                  "Last rec. EOM", "Average 24-H production rate", "Target yield")

colnames_412 <- c("Animal number", "Teat EcDr LF", "Rec. LF FQ cond. dev.", "Teat EcDr LR", "Rec. LR FQ cond. dev."
                  , "Teat EcDr RF", "Rec. RF FQ cond. dev.", "Teat EcDr RR", "Rec. RR FQ cond. dev.",
                  "Rec. FQ mean max.")

colnames_5a01 <- c("Animal number", "Current lactation days", "Average 24-H production", "C. Ytd All. OOP. A",
                   "C. Ytd Uneaten OOP. B", "C. Ytd All. OOP. B", "C. Ytd Uneaten OOP. B", "C. Noof meals",
                   "C. Wait time")
# CHECK THIS ^^^ IS RIGHT, NOT 413

colnames_5a02 <- c("Animal number", "Group number", "Current lactation days", "Average 24-H production",
                   "C. Feeding Enabled", "C. Calc Alg.", "C. Allowance feed A", "C. Allowance feed B",
                   "C. Noof meals", "C. Wait time", "C. Eating rate", "C. Automatic meal calculation")

colnames_5a03 <- c("Animal number", "Current lactation days", "Lactation number", "Average 24-H production",
                   "C. Calc Alg.", "C. Allowance feed A", "C. Allowance feed B", "Expected dry", "Expected calving")

colnames_5a04 <- c("Daily date", "Animal number", "Daily production", "C. Daily feed A", "C. Daily Eaten A",
                   "C. Daily feed B", "C. Daily Eaten B")

colnames_5a05 <- c("C. Rec Loc. Index", "Animal number", "C. Rec. stamp", "C. Rec Eaten A", "C. Rec Eaten B",
                   "C. Rec Eaten C", "C. Rec Eaten D")

colnames_5a06 <- c("C. Calc Alg.", "Animal number", "Current lactation days", "Average 24-H production",
                   "Expected calving", "C. Allowance feed A", "C. Target A", "C. Step A", "C. Allowance feed B",
                   "C. Target B", "C. Step B")

colnames_5a07 <- c("C. Calc Alg.", "C. Feed Curve", "Animal number", "Current lactation days", "Average 24-H production",
                   "Expected calving", "C. Curve startdate", "C. Allowance feed A", "C. Curve A", "C. Allowance feed B",
                   "C. Curve B")



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
  df_list[[i]] <- read.csv(file_list[i], header = F, na.strings = '-')
  if (nrow(df_list[[i]]) != 1) {
    df_list[[i]] <- read.csv(file_list[i], header = F, skip = 1, na.strings = '-')
  }
  else {
    print(paste("Error:", file_list_no_txt[i], "file has no data"))
  }
}

# Make empty list to store the columns
all_colnames <- list()

# Fill column vector with the filenames
for ( i in seq_along(file_list_no_txt) ) {
  all_colnames[i] <- paste("colnames_", file_list_no_txt[i])
}



for (i in 1:file_list_no_txt) {
  colnames <- headings[[i]]
}



colnames(all_animals_df) <- colnames_101
colnames(all_milkcows_df) <- colnames_102
