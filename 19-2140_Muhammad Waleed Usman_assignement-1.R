
# Code by Muhammad Waleed Usman (I19-2140)


# Reading the dataset through read.csv command
MyData <- read.csv("AnimalData.csv")



# This implies the intake date of the animals i used the bar chart for this and implemented it using plot command

plot(MyData$Intake.Date, main= "Date of intake for animals",
     xlab= "Intake Date",
     ylab= "Number of Animals",
     col= "Blue" )


# This implies the intake type of the animals i used the bar chart for this and implemented it using plot command 

plot(MyData$Intake.Type,main= "Type of Animal",
   xlab= "Intake Type",
   ylab= "Number of Animals",
  col= "Black")



# This implies that the number of Dogs is greater then number of cats. I used bar chart and for this purpose i used plot command.

plot(MyData$Animal.Type,main= "Type of Animal",
     xlab= "Animal Type",
     ylab= "Number of Animals",
     col= "blue")


# This impies that the neutered animals are greater in number as compare to other ones.  I used bar chart and for this purpose i used plot command.

plot(MyData$Neutered.Status,main= "Status of Neutered",
     xlab= "Neutered Status",
     ylab= "Number of Animals",
     col= "red")

#this impies that the number of males are larger then that of number of females.  I used bar chart and for this purpose i used plot command.

plot(MyData$Sex,main= "Gender of animal",
     xlab= "Gender",
     ylab= "Number of Animals",
     col= "Green")



#here the graph is right skewed. the younger animals are greater in number when they were adopted. 
#since this is numeric data so i used histogram, for this purpose i implemented hist command.

hist(MyData$Age.Intake,main= "Age of the animal",
     xlab= "Age ",
     ylab= "Number of Animals",
     col= "red")


#Normal animals are greater in number  then sick or injured animals.  I used bar chart and for this purpose i used plot command.

plot(MyData$Condition,main= "Condition of Animal",
     xlab= "Condition",
     ylab= "Number of Animals",
     col= "red")


#here the cymric mix breed is greater in number.  I used bar chart and for this purpose i used plot command.

plot(MyData$Breed,main= "Type of Breed",
     xlab= "Breed",
     ylab= "Number of Animals",
     col= "red")




#Here we are using plot to show that the animals are aggressive or not. i have used the same plot command.
plot(MyData$Aggressive,main= "Agression",
     xlab= "Agressive or not",
     ylab= "Number of Animals",
     col= "red")


# Here we are basically plotting the property that indicates the independence of each animal
plot(MyData$Independent,main= "Independece Vs number of animals",
     xlab= "Independence",
     ylab= "Number of Animals",
     col= "red")


# Here we are plotting the property of the animals which indicates intelligence
plot(MyData$Intelligent,main= "Intelligence",
     xlab= "Intelligence",
     ylab= "Number of Animals",
     col= "red")

# Here we are basically plotting yhe animals loyality. that how many of the of them are loyal or not
plot(MyData$Loyal,main= "Loyal vs number of animals",
     xlab= "Loyal",
     ylab= "Number of Animals",
     col= "red")


# Here we are basically plotting the characteristic of animal thata are they social or not
plot(MyData$Social,main= "Social vs Number of Animals",
     xlab= "Social",
     ylab= "Number of Animals",
     col= "red")


# Here we plot the property that are they good with kids or not.
plot(MyData$Good.with.Kids,main= "Good with Kids vs Number of Animals",
     xlab= "Good with Kids",
     ylab= "Number of Animals",
     col= "red")



# Here we are basically plotting the property that how much time they are alive.
hist(MyData$Max.Life.Expectancy,main= "Max Life Expectancy Vs Number of Animals",
     xlab= "Max Life Expectancy",
     ylab= "Number of Animals",
     col= "red")



# Here we generate the histogram of the weights of different animals using hist command
hist(MyData$Max.Weight,main= "Weight vs. Number of Animals",
     xlab= "Weight",
     ylab= "Number of Animals",
     col= "red")


# Here we generate the histogram of the weights of different animals
plot(MyData$Dog.Group,main= "Dog group Vs Number of Animals",
     xlab= "Dog Group",
     ylab= "Number of Animals",
     col= "red")


# Here we generate the plot of the colors of different animals
plot(MyData$Color,main= "Absolute Losses vs. Relative Losses(in%)",
     xlab= "Color",
     ylab= "Number of Animals",
     col= "red")


# Here we generate the histogram of the weights of different animals using hist command
hist(MyData$Weight,main= "Weight vs number of animals",
     xlab= "Weight",
     ylab= "Number of Animals",
     col= "red")


# Here we are basically generating the plots of the Lab tests of different animals
plot(MyData$Lab.Test,main= "Lab test Vs number of Animals",
     xlab= "Lab Test",
     ylab= "Number of Animals",
     col= "red")



# Here we are basically plotting the graphs in outcomes dates of animals.
plot(MyData$Outcome.Date,main= "Date Vs number of animals",
     xlab= "Date",
     ylab= "Number of Animals",
     col= "red")


# Here we are basically plotting the outcome types of different animals from the data
plot(MyData$Outcome.Type,main= "Type vs number of animals",
     xlab= "Outcome",
     ylab= "Number of Animals",
     col= "red")


# here we are generating the histogram for the number of animals for which the are sheltered
# The histogram is right skew because most of the data is scattered to the right side of the histogram
hist(MyData$Days.Shelter,main= "Shelter vs number of animals",
     xlab= "Shelter",
     ylab= "Number of Animals",
     col= "red")

