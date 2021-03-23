### Inital attempt ###
#for (i in 1:length(file_list)) {
#  nam <- paste(file_list[i], sep = "")
#  nam <- sub(".txt", "", nam)
#  file <- read.csv(file_list[i], header = F, skip = 1, na.strings = '-')
#  colnames(file) <- all_colnames[i]
#  assign(nam, file)
#  rm(file)
#}



for ( i in seq_along(file_list)) {
  df_list[[i]] <- read.csv(file_list[i], header = F, skip = 1, na.strings = '-')
}

for ( i in seq_along(file_list)) {
  df_list[[i]] <- read.csv(file_list[i], header = F, na.strings = '-')
  if (nrow(df_list[[i]]) != 1) {
    df_list[[i]] <- read.csv(file_list[i], header = F, skip = 1, na.strings = '-')
  }
  else {
    print(paste("Error:", file_list[i], "file has no data"))
  }
}

all_colnames <- list(colnames_101, colnames_102, colnames_3a02, colnames_3a06, colnames_3a07, colnames_3a08,
                     colnames_3a09, colnames_3a10, colnames_3a17, colnames_3b01, colnames_3b02, colnames_3b05, 
                     colnames_3b06, colnames_3b07, colnames_3b08, colnames_401, colnames_402a, colnames_402b, 
                     colnames_403, colnames_404, colnames_405, colnames_406, colnames_407, colnames_408, 
                     colnames_409, colnames_410, colnames_5a01, colnames_5a02, colnames_5a03a, colnames_5a03a, 
                     colnames_5a04, colnames_5a05, colnames_5a06, colnames_5a07, colnames_5a08, colnames_5a09,
                     colnames_5a10, colnames_5a11, colnames_5a12, colnames_5a13, colnames_5a14,
                     colnames_5a15, colnames_5a16, colnames_5b01, colnames_5b02, colnames_5b03,
                     colnames_5b04, colnames_5b05, colnames_5b06, colnames_5b07, colnames_5b08,
                     colnames_5b09, colnames_5b10, colnames_5b11, colnames_5b12, colnames_5b13,
                     colnames_MerlinView, colnames_Milk_Feed)


head_sections <- c()

sectioned_headings <- list()
sectioned_headings[[1]] <- list("Activity", "Animal", "Attachment"
)

sectioned_headings[[2]] <- "Regime"
sectioned_headings[[3]] <- list("Animal name",
                                "Animal number",
                                "Animal type")
sectioned_headings[[4]] <- "Ease"
sectioned_headings[[5]] <- list("Milkings",
                                "24-H conductivity",
                                "24-H production",
                                "24-H production rate")

for (i in 1:file_list_no_txt) {
  colnames <- headings[[i]]
}



colnames(all_animals_df) <- colnames_101
colnames(all_milkcows_df) <- colnames_102

# Make empty list to store the columns
all_colnames <- list()

# Fill column vector with the filenames
for ( i in seq_along(file_list_no_txt) ) {
  all_colnames[i] <- paste("colnames_", file_list_no_txt[i], sep = "")
}


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

