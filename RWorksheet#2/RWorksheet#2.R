# 1a
-5:5

# 1b
x <- 1:7
x

# 2a
seq(1, 3, by = 0.2)

# 3
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57,
          49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44,
          38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

# 3a
ages[3]

# 3b
ages[c(2, 4)]

# 3c
ages[-1]

# 4
x <- c("first" = 3, "second" = 0, "third" = 9)
names(x)
x[c("first", "third")]

# 5a
x <- -3:2
x[2] <- 0
x

# 6a
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
liter <- c(25, 30, 40, 50, 10, 45)
fuel_data <- data.frame(Month = month, Price = price, Liter = liter)
fuel_data

# 6b
weighted.mean(price, liter)

# 7
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers),
          var(rivers), sd(rivers), min(rivers), max(rivers))
data

# 8a
celebrity <- c("Oprah Winfrey", "Tiger Woods", "Madonna", "Beyonce Knowles", "David Beckham",
               "Johnny Depp", "Jay-Z", "The Police", "J.K. Rowling", "Brad Pitt")
power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
pay <- c(275, 115, 72, 87, 48, 72, 82, 115, 300, 20)

# 8b
power_ranking[celebrity == "J.K. Rowling"] <- 15
pay[celebrity == "J.K. Rowling"] <- 90
data.frame(Celebrity = celebrity, Power_Ranking = power_ranking, Pay = pay)
