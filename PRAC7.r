exam_data <- matrix(c(30, 25, # Yes: Male, Female
                      20, 25), # No: Male, Female
                    nrow = 2,
                    byrow = FALSE)
rownames(exam_data) <- c("Male", "Female")
colnames(exam_data) <- c("Yes", "No")
print("Contingency Table:")
print(exam_data)
chi_result <- chisq.test(exam_data)
print("Chi-square Test Result:")
print(chi_result)
bar_data <- as.table(exam_data)
barplot(bar_data,
        beside = TRUE,
        col = c("skyblue", "pink"),
        legend = TRUE,
        main = "Responses by Gender",
        xlab = "Response",
        ylab = "Count")

mosaicplot(bar_data,
           main = "Mosaic Plot: Responses by Gender",
           color = TRUE,
           xlab = "Response",
           ylab = "Gender")

