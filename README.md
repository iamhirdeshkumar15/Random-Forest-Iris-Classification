# Random Forest Classifier on Iris Dataset  

This repository contains an R script that demonstrates the implementation of a Random Forest classifier on the Iris dataset. The project includes preprocessing steps such as missing value checks and feature scaling, followed by training and evaluating the model.

## Dataset  
The Iris dataset is a classic dataset in machine learning and statistics, containing the following attributes:  
- **Sepal Length** (numeric)  
- **Sepal Width** (numeric)  
- **Petal Length** (numeric)  
- **Petal Width** (numeric)  
- **Species** (categorical): Setosa, Versicolor, Virginica  

The dataset has 150 records and no missing values by default.

## Key Features  
1. **Preprocessing:**  
   - Checks for missing values.  
   - Scales numeric features to standardize their range.  

2. **Model Training:**  
   - Uses the Random Forest algorithm with 100 trees (`ntree = 100`).  
   - Splits the dataset into 70% training and 30% testing data.  

3. **Evaluation:**  
   - Predictions on the test set.  
   - Confusion matrix to evaluate model performance.  
   - Calculates the accuracy of the model.

## Requirements  
To run this project, you need:  
- R (version 4.0 or later)  
- Installed libraries:  
  ```r
  install.packages("randomForest")
