# Assignment 4 DSC 465. 
# Question 1 code. 

library(ggplot2)   # loading ggplot to generate graphs.
library(dplyr)     # loading dplyr to filter and select columns/rows from dataset.

HAPPY = read.csv(file.choose())             # loading csv file.
colnames(HAPPY)[1] = c("Year")              # Renaming the column 1 dur to flaw in name.
head(HAPPY)                                 # checking the head (first few rows).

# now, we will perfrom filter operation and get the data for year 2015.
mosic <- filter(HAPPY, Year == 2015)        

# Here we have selected the number of columns we need to perform different operations.
mosic <- select(mosic, Year, Country, Region, Happiness_Score, Social_Support, Economy_GDP, Health,
                Freedom, Generosity, Trust_Corruption, Dystopia_Residual)

head(mosic)                                 # checking if all the colums are present.
options(max.print = 99999)                  # options(max.print) operation allows us to view the complete data.
mosic

# 2D contours comparision between the Social_Support and Happiness_Score.

P <- ggplot(data = mosic, aes(y=Happiness_Score, x=Social_Support))
P + stat_density2d(aes(colour=..level..)) + geom_point()

# 2D contours comparision between Freedom and Happiness_Scores.

P1 <- ggplot(data = mosic, aes(y=Happiness_Score, x=Freedom))
P1 + stat_density2d(aes(colour=..level..)) + geom_point()

