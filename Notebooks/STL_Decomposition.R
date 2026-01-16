library(tidyverse)
library(tsibble)
library(feasts)
df = read.csv("D:\\Download\\Only_Kolkata.csv")
head(df)
# 1. Convert your dataframe to a tsibble
# Replace 'Date' and 'Value' with your actual column names
data_ts <- df %>%
  # 1. Fix the date format (d-m-y matches 01-01-2022)
  mutate(Date = as.Date(Time, format = "%d-%m-%Y")) %>%
  # 2. Group by Date and average the Kolkata values to remove duplicates
  group_by(Date) %>%
  summarise(Kolkata = mean(Kolkata, na.rm = TRUE)) %>%
  # 3. Convert to tsibble
  as_tsibble(index = Date)

# 2. Decompose into Trend, Weekly, and Yearly components
data_ts %>%
  model(STL(Kolkata ~ trend(window = 91) + # 91 days ~ 3 months for a smooth trend
              season("week") + 
              season("year"))) %>%
  components() %>%
  autoplot()

data_ts %>% features(Kolkata, feat_stl)

data_ts %>% features(Kolkata, feat_stl, .period = 365.25)