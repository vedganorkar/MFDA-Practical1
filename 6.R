heights <- c(150, 160, 170, 180, 190)
weights <- c(55, 60, 70, 80, 85)
model <- lm(weights ~ heights)
summary(model)
coefficients <- coef(model)
cat(coefficients)
cat("The equation is: Weight =", round(coefficients[2], 2), "* Height=" ,
    round(coefficients[1], 2), "\n")

test <- data.frame(heights = c(155, 165, 175))
predicted <- predict(model, test)
print(predicted)
weight=-66+0.8*160
print(weight)
