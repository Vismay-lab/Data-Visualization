# Happiness dataset for project 
# initial exploratory analysis
# importing the dataset
library(readxl)
library(ggplot2)
hp = read_xlsx(file.choose())
head(hp)

str(hp)       # here we have dertermined the structure of the dataset
as.factor(hp$Country)
hp[,3] -> as.factor(hp$Region)
as.numeric(hp$Trust_Corruption)
str(hp)
summary(hp)   # here we have found the summary stats
#is.na(hp[,12])     # here we will check if there are any null values in the dataset
as.factor(hp$Country)
as.factor(hp$Region)
as.numeric(hp$Trust_Corruption)
str(hp)
ggplot()

cony = factor(hp$Country)
cony

str(hp)
hpstr -> data.frame(Country = as.factor(hp$Country), Region = as.factor(hp$Region), Trust_corrupt = as.numeric(hp$Trust_Corruption)) 
hp = as.factor(hp$Country)


#-----------------------------------------------old happy---------------------------------------------------------------
# 2015 
# reading the file and analysing the str and summary and checking the null values
oldhappy2015 = read.csv(file.choose())
head(oldhappy2015)
str(oldhappy2015)
summary(oldhappy2015)
is.na(oldhappy2015)
options(max.print = 999999)

# 2016
# reading the file and analysing the str and summary and checking the null values
oldhappy2016 = read.csv(file.choose())
head(oldhappy2016)
str(oldhappy2016)
summary(oldhappy2016)
is.na(oldhappy2016)


# 2017
# reading the file and analysing the str and summary and checking the null values
oldhappy2017 = read.csv(file.choose())
head(oldhappy2017)
str(oldhappy2017)
summary(oldhappy2017)
is.na(oldhappy2017)

options(max.print = 999999)

# 2018
# reading the file and analysing the str and summary and checking the null values
oldhappy2018 = read.csv(file.choose())
head(oldhappy2018)
str(oldhappy2018)
summary(oldhappy2018)
is.na(oldhappy2018)

options(max.print = 999999)

# 2019
# reading the file and analysing the str and summary and checking the null values
oldhappy2019 = read.csv(file.choose())
head(oldhappy2019)
str(oldhappy2019)
summary(oldhappy2019)
is.na(oldhappy2019)

options(max.print = 999999)
