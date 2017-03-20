# Library
library(rvest)

# Download data
lego_movie <- read_html("https://en.wikipedia.org/wiki/Anscombe's_quartet")

# Extract data
rating <- lego_movie %>% html_table(header = TRUE)
ascomb <- (rating[[2]][2:dim(rating[[2]])[1], ])

# Rename data
names(ascomb) <- paste0(rep(c("x", "y"), 4), rep(1:4, each = 2))

# trasform data into data.frame
df <- data.frame(sapply(ascomb, as.numeric))

# Summary statistics
summary(df)[,c(1, 3, 5, 7)]
summary(df)[,c(2, 4, 6, 8)]

# Mean and variance
round(apply(df, 2, mean), 2)[c(1,3,5,7)]
round(apply(df, 2, var), 3)[c(2,5,6,8)]

# Data correlation
cor(df$x1, df$y1)
cor(df$x2, df$y2)
cor(df$x3, df$y3)
cor(df$x4, df$y4)

# Plot
par(mfrow = c(2,2))
plot(df$x1, df$y1, main = "Pair 1", xlim = c(4, 20), ylim = c(4,13), pch = 19)
abline(lm(df$y1 ~ df$x1), col = "red", lty = 2)
mtext(paste0("Cor = ", round(cor(df$x1, df$y1), 3)), 3)
plot(df$x2, df$y2, main = "Pair 2", xlim = c(4, 20), ylim = c(4,13), pch = 19)
abline(lm(df$y2 ~ df$x2), col = "red", lty = 2)
mtext(paste0("Cor = ", round(cor(df$x2, df$y2), 3)), 3)
plot(df$x3, df$y3, main = "Pair 3", xlim = c(4, 20), ylim = c(4,13), pch = 19)
abline(lm(df$y3 ~ df$x3), col = "red", lty = 2)
mtext(paste0("Cor = ", round(cor(df$x3, df$y3), 3)), 3)
plot(df$x4, df$y4, main = "Pair 4", xlim = c(4, 20), ylim = c(4,13), pch = 19)
abline(lm(df$y4 ~ df$x4), col = "red", lty = 2)
mtext(paste0("Cor = ", round(cor(df$x4, df$y4), 3)), 3)
