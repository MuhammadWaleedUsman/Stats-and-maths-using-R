# Reading the dataset from the directory 
dataset<-read.table(file.choose(),header = TRUE,sep = ',',stringsAsFactors = FALSE)


# Variables are declared here 
a <- dataset$var1
b <- dataset$var2
c <- dataset$var3
out <- dataset$output


# Dataframes are declared here
variable1_dataframe <- data.frame(a,out)
variable2_dataframe <- data.frame(b,out)
variable3_dataframe <- data.frame(c,out)

# Creating scatter plot for each variable with respect to output
plot(a,out,main = 'ScatterPlot for Var1 and the output',xlab='Var1',ylab = 'Output')
plot(b,out,main = 'ScatterPlot for Var2 and the output',xlab='Var2',ylab = 'Output')
plot(c,out,main = 'ScatterPlot for Var3 and the output',xlab='Var3',ylab = 'Output')

#Calculating Linear Regression Models for each variables with respect to output
l1model <- lm(a ~ poly(a, 1,raw=TRUE))
l2model <- lm(b ~ poly(b, 1,raw=TRUE))
l3model <- lm(c ~ poly(c, 1,raw=TRUE))
#here we can see that for var1 with respect to output the polynomial regression model for order 3 fits best, cause it has lower p value

#Calculating Polynomial Regression Model of degree 2 for each variable with respect to output
q1model <- lm(a ~ poly(a, 2,raw=TRUE))
q2model <- lm(b ~ poly(a, 2,raw=TRUE))
q3model <- lm(c ~ poly(a, 2,raw=TRUE))
#here we can see that for var2 with respect to output the polynomial regression model for order 3 fits best, cause it has lower p value

#Calculating Polynomial Regression Model of degree 3 for each variable with respect to output
c1model <- lm(a ~ poly(a, 3,raw=TRUE))
c2model <- lm(b ~ poly(a, 3,raw=TRUE))
c3model <- lm(c ~ poly(a, 3,raw=TRUE))
#here we can see that for var2 with respect to output the polynomial regression model for order 3 fits best, cause it has smallest p value


#Ploting these Linear Regression Models of var1
plot(a, out, pch=20,xlab = "var1", ylab = "outputs ", cex.lab = 1, col = "Black" )
lines(a, predict(l1model), col = 'blue')
lines(a, predict(q1model), col = 'yellow')
lines(a, predict(c1model), col = 'red')
#here we can see that for var1 with respect to output the polynomial regression model for order 3 fits best, cause it has lower p value

#Ploting these Linear Regression Models of var2 with respect to output
plot(b, out, pch=20,xlab = "var2", ylab = "outputs ", cex.lab = 1, col = "Black" )
lines(b, predict(l2model), col = 'blue')
lines(b, predict(q2model), col = 'yellow')
lines(b, predict(c2model), col = 'red')

#Ploting these Linear Regression Models of var3 with respect to output
plot(c, out, pch=20,xlab = "var2", ylab = "outputs ", cex.lab = 1, col = "Black" )
lines(c, predict(l3model), col = 'blue')
lines(c, predict(q3model), col = 'yellow')
lines(c, predict(c3model), col = 'red')

#here we can see that for var2 with respect to output the polynomial regression model for order 3 fits best, cause it has smallest p value














