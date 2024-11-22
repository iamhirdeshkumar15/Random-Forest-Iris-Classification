# Load necessary libraries
install.packages("randomForest")  # Install randomForest package if not already installed
library(randomForest)  # For Random Forest algorithm

# Load the iris dataset
data("iris") 

# Display the structure of the dataset
str(iris)

# Preprocessing Step: Check for missing values
if (any(is.na(iris))) {
  print("Data contains missing values. Please handle them before proceeding.")
} else {
  print("No missing values found in the dataset.")
}

# Preprocessing Step: Scale the numeric features (Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)
scale_features <- function(df) {
  df[, 1:4] <- as.data.frame(scale(df[, 1:4]))  # Scale only the first four numeric columns
  return(df)
}
iris <- scale_features(iris)

# Split the dataset into training and testing sets
set.seed(123)  # Set seed for reproducibility
indexes <- sample(150, 110)  # Randomly sample 110 indices for training

iris_train <- iris[indexes, ]  # Training data (110 samples)
iris_test <- iris[-indexes, ]  # Testing data (remaining 40 samples)

# Train the Random Forest model
rf_model <- randomForest(Species ~ ., data = iris_train, ntree = 100) 

# Print the model summary
print(rf_model)

# Make predictions on the test set
predictions <- predict(rf_model, iris_test)

# Evaluate the model using a confusion matrix
output <- table(Predicted = predictions, Actual = iris_test$Species) 
print(output)

# Calculate and display the model accuracy
accuracy <- (sum(diag(output)) / sum(output)) * 100
cat("Accuracy of the Random Forest model:", accuracy, "%\n")
