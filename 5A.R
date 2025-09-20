mean <- 250
sd <- 25
n <- 50
mu <- 400

z_value <- (mean - mu) / (sd / sqrt(n))
p_value <- 2 * pnorm(z_value)

cat("z-statistic:", z_value)
cat("p-value:", p_value)

if (p_value < 0.05) {
  cat("Conclusion: Reject the null hypothesis.")
} else {
  cat("Conclusion: Accept the null hypothesis.")
}