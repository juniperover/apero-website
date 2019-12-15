#start with pressing top left + button and selecting R script
#Analysis script for the project
#Then save
#Note that many people use Rmarkdown docs, she doesn't
#she creates a new folder "R" in the "Files" at below right

library(tidyverse)
library(janitor) 
library(here)
library(beepr)
library(skimr)
library(dplyr)
library(IPtoCountry)

#read data
#first I imported Data_complete.csv to an R file, then:
#write.csv(Data_complete,file="data_complete.csv")

ourdata <-read.csv("data/data_complete.csv")
d <- subset(ourdata,(country == "United States" | country == "Ireland" | country == "South Africa"
                | country == "Canada" | country == "United Kingdom" | country == "Australia"
                | country == "New Zealand"))

#process data


#graphing

#print image