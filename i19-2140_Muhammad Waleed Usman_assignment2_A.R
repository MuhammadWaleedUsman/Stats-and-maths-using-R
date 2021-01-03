#Import the provided "Animal Dataset" in RStudio and construct correlation matrix for all variables.
#Identify top three pairs of variables having highest correlation in categorical and numerical variables.
#Write 10 to 20 words about six selected correlations.

# Script by Muhammad Waleed Usman

# Libraries included in the project
library(corrplot)
library(Hmisc)


# Flattern Matrix function which flatterns the data into a flattern data to check the highest value by using the FLattern Matrix
flattenMatrix <- function(cormat, pmat) {
  ut <- upper.tri(cormat)
  data.frame(
    row = rownames(cormat)[row(cormat)[ut]],
    column = rownames(cormat)[col(cormat)[ut]],
    cor  =(cormat)[ut],
    p = pmat[ut]
  )
}


# Reading the dataset from the file and converting it into a dataFrame
AnimalDataset <- read.csv(file = "AnimalData.csv" , sep=",")

# Converting the dataFrame into numeric format for the perpose of finding the correlation betweeen the columns
AnimalDataset = sapply(AnimalDataset, as.numeric)


# Calculating the correlation of the matrix using the pearson correlation function
correlation = cor(AnimalDataset,method = "pearson")

# Plotting the correlation matrix using corrplot as a matrix and showing the rows and columns through which the correlation visualized
corrplot(correlation, method="square")

# Converting the correlation matrix as flattern and identifying the maximum correlations in it
correlation_flattern <- corr(as.matrix(AnimalDataset[,1:23]))
flattern_data = flattenMatrix(correlation_flattern$r, correlation_flattern$P)

# Ordering the correlation matri in the order of assending
Ordered_Flattern_data = flattern[order(flattern$cor),]

# After visualiing the correlations we bassically conclude that the highest correlations between the Animal data is:

# Categorical Data:
# AnimalData VS Good with kids is the highest correlation in the categorical data which is 0.9380427482
# AnimalData VS Aggressive is the Second highest correlation in the categorical data which is 0.9274867883
# Loyal VS Good with Kids is the Third highest correlation in the categorical data which is 0.9252338687

#Descriptions:
#The Correations which are in categorical data are strong because they are nearer to the 1. like the Animal Data vs Good with kids has a strong correlation as 0.938


# Numerical Data:
# Max weight Vs weight is the highest correlation in the Numeric category which is 0.6459153654
# Age intake Vs weight is the second highest correlation in the Numeric category which is 0.3243886766
# Age intake Vs maxlife expectency is the third highest correlation in the Numeric category which is 0.1564699705

# The Correlation which are in numerical data are weak beacuse they have a correlation but not strong as the correlation between max weight vs weight.
# The correlation which is Age intake vs weight because it has 0.3244 correlation which is weak correlation beacuse it is less than 0.5
# The third one is 0.1564699705 which is also weak correlation beacuse it is less than 0.5



