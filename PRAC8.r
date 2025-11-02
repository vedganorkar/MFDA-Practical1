chips <- c(1095, 1110, 1120, 1085, 1135, 1105, 1090, 1115,
           1140, 1075, 1125, 1100, 1155, 1098, 1130, 1080)
median_claim <- 1100
diffs <- chips - median_claim
diffs <- diffs[diffs != 0]
num_positive <- sum(diffs > 0)
n <- length(diffs)
sign_test_result <- binom.test(num_positive, n, p = 0.5, alternative = "greater")
print(sign_test_result)
cat("\nSummary:\n")
cat("Number of bags with more than 1100 chips:", num_positive, "\n")
cat("Total (non-tied) bags:", n, "\n")
cat("p-value:", sign_test_result$p.value, "\n")
if (sign_test_result$p.value < 0.05) {
  cat("Conclusion: Reject H0 → Evidence that the average number of chips is > 1100.\n")
} else {
  cat("Conclusion: Fail to reject H0 → Not enough evidence that average chips > 1100.\n")
}


