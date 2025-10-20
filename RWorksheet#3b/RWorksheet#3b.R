# 1a. Create the data frame (example data, replace with your actual table data)
household <- data.frame(
  Respondent = c("R1", "R2", "R3", "R4", "R5"),
  Sex = c("Male", "Female", "Male", "Female", "Male"),
  Siblings = c(4, 6, 5, 3, 7),
  Type_of_House = c("Wood", "Concrete", "Semi-Concrete", "Wood", "Concrete"),
  Fathers_Occupation = c("Farmer", "Driver", "Farmer", "Others", "Farmer"),
  stringsAsFactors = FALSE
)

# 1b. Get structure and summary
str(household)
summary(household)

# 1c. Check if mean number of siblings attending is 5
mean(household$Siblings) == 5

# 1d. Extract 1st two rows and all columns
household[1:2, ]

# 1e. Extract 3rd and 5th row with 2nd and 4th column
household[c(3, 5), c(2, 4)]

# 1f. Select variable types of houses and store as types_houses
types_houses <- household$Type_of_House

# 1g. Select all Males whose father's occupation is Farmer
subset(household, Sex == "Male" & Fathers_Occupation == "Farmer")

# 1h. Select all females with siblings >= 5
subset(household, Sex == "Female" & Siblings >= 5)


# 2. Create empty data frame
df <- data.frame(
  Ints = integer(),
  Doubles = double(),
  Characters = character(),
  Logicals = logical(),
  Factors = factor(),
  stringsAsFactors = FALSE
)
print("Structure of the empty dataframe:")
str(df)


# 3a. Import HouseholdData.csv (ensure file is in working directory)
household_csv <- read.csv("HouseholdData.csv", stringsAsFactors = FALSE)

# 3b. Convert Sex to factor and integer
household_csv$Sex <- factor(household_csv$Sex, levels = c("Male", "Female"))
household_csv$Sex_int <- as.integer(household_csv$Sex)
household_csv[, c("Sex", "Sex_int")]

# 3c. Convert Type of Houses to factor and integer
household_csv$Type_of_House <- factor(household_csv$Type_of_House,
                                      levels = c("Wood", "Concrete", "Semi-Concrete"))
household_csv$Type_of_House_int <- as.integer(household_csv$Type_of_House)
household_csv[, c("Type_of_House", "Type_of_House_int")]

# 3d. Convert Fathers_Occupation to factor and integer
household_csv$Fathers_Occupation <- factor(household_csv$Fathers_Occupation,
                                           levels = c("Farmer", "Driver", "Others"))
household_csv$Fathers_Occupation_int <- as.integer(household_csv$Fathers_Occupation)
household_csv[, c("Fathers_Occupation", "Fathers_Occupation_int")]

# 3e. Select all females with father's occupation driver
subset(household_csv, Sex == "Female" & Fathers_Occupation == "Driver")

# 3f. Select respondents with siblings >= 5
subset(household_csv, Siblings >= 5)
