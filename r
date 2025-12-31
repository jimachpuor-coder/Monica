# Akobo Data Science Example (R)

# -----------------------------
# 1. Create Akobo Dataset
# -----------------------------
akobo <- data.frame(
  Year = c(2018, 2019, 2020, 2021, 2022, 2023),
  Population = c(42000, 43500, 45000, 46800, 49000, 51500),
  Rainfall_mm = c(820, 790, 860, 900, 880, 910),
  School_Enrollment = c(7200, 7500, 7700, 8100, 8600, 9100)
)

print("Akobo Dataset:")
print(akobo)

# -----------------------------
# 2. Summary Statistics
# -----------------------------
summary(akobo)

# -----------------------------
# 3. Visualization
# -----------------------------
plot(
  akobo$Year, akobo$Population, type = "o",
  main = "Population Growth in Akobo",
  xlab = "Year", ylab = "Population"
)

barplot(
  akobo$School_Enrollment,
  names.arg = akobo$Year,
  main = "School Enrollment in Akobo",
  xlab = "Year", ylab = "Students"
)

# -----------------------------
# 4. Statistical / AI Model
# Linear Regression
# -----------------------------
model <- lm(Population ~ Rainfall_mm, data = akobo)
summary(model)

# Prediction
future_data <- data.frame(Rainfall_mm = 950)
predicted_population <- predict(model, future_data)

print("Predicted population in Akobo with 950mm rainfall:")
print(predicted_population)
