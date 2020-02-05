# Data Import and Cleaning
library(rstudioapi)
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

raw_df <- read.csv(file = "C:/Users/phoeb/OneDrive/Documents/DataScience/week3.DataScience/data/week3.csv", header = T)
raw_df$timeStart <- as.POSIXct(raw_df$timeStart)
raw_df$timeEnd <- as.POSIXct(raw_df$timeEnd)
clean_df <- subset(raw_df, subset = format(raw_df$timeStart,'%B')!='June')
clean_df <- subset(clean_df, subset = q6 == 1)

# Analysis
