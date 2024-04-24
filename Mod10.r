# Install and load the 'wooldridge' library
install.packages("wooldridge")
library(wooldridge)

# Load the 'hprice1' dataset
data("hprice1")

# Explore the dataset to decide which variables to include in the model
summary(hprice1)

# Create a linear regression model
model1 <- lm(price ~ bdrms, data = hprice1)

summary(model1)  # View model summary

bedroom_effect <- model1$coefficients["bdrms"]  

# **Completing the Sentence**
cat("For the average home in this dataset, we can reasonably expect that if you added an extra bedroom you would increase the expected selling price by $", bedroom_effect, "\n")  
