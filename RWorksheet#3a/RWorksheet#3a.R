# 1a
LETTERS[1:11]

# 1b
LETTERS[seq(1, 26, by = 2)]

# 1c
LETTERS[c(1, 5, 9, 15, 21)]  # A, E, I, O, U

# 1d
tail(letters, 5)

# 1e
letters[15:24]

# 2a
city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city

# 2b
temp <- c(42, 39, 34, 34, 30, 27)
temp

# 2c
weather <- data.frame(city, temp)
weather

# 2d
names(weather) <- c("City", "Temperature")
weather

# 2e
str(weather)

# 2f
weather[3:4, ]

# 2g
weather[which.max(weather$Temperature), "City"]
weather[which.min(weather$Temperature), "City"]

# 3a
m <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
m

# 3b
m * 2

# 3c
m[2, ]

# 3d
m[1:2, 3:4]

# 3e
m[3, 2:3]

# 3f
m[, 4]

# 3g
rownames(m) <- c("isa", "dalawa", "tatlo")
colnames(m) <- c("uno", "dos", "tres", "quatro")
m

# 3h
dim(m) <- c(6, 2)
m

# 4a
arr_vals <- rep(c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1), times = 2)
arr3d <- array(arr_vals, dim = c(2, 4, 3))
arr3d

# 4b
dim(arr3d)

# 4c
dimnames(arr3d) <- list(
  letters[1:2],
  LETTERS[1:4],
  c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array")
)
arr3d

