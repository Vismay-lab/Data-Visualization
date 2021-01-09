# Assignment 3 Question 4 

airqual = read.csv(file.choose()) # Now importing the dataset AirQuality.csv file. 
head(airqual)                     # checking the first five values.
airqual
drop_na(airqual)

# part c

library(ggplot2)       # Standard library of graphing.
library(gcookbook)     # for visualization and other functions relatied to it.
library(ggforce)       # this library is for sina plot.
library(tidyverse)

wind_vs_all = airqual %>%  ggplot(aes(x=factor(Month), y=Wind)) + geom_violin()
wind_vs_all

#------------------------------------------------------------------------------------------------------------------
# Part d Extra cretdit 
# Generating Q-Q plot

library(ggplot2)

# Generating the qq plot for Wind with title using ggtitle
W <- ggplot(data = airqual, aes(sample = Wind)) + geom_qq() + geom_qq_line()
print(W + ggtitle("QQ plot for wind"))

# Generating the qq plot for Solar.R with title using ggtitle
S <- ggplot(data = airqual, aes(sample = Solar.R)) + geom_qq() + geom_qq_line()
print(S + ggtitle("QQ plot for Solar.R"))

