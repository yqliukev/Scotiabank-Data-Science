# library loading
library(tidyverse)

# clean training data
train_data <- read.csv("Use_Data/train_ScotiaDSD.csv") %>% 
  filter(AMOUNT_WEIGHT_AVAIL != "#DIV/0!", AMOUNT_WEIGHT_LIMIT != "#DIV/0!") %>% 
  mutate(AMOUNT_WEIGHT_AVAIL = as.numeric(AMOUNT_WEIGHT_AVAIL)) %>%
  mutate(AMOUNT_WEIGHT_LIMIT = as.numeric(AMOUNT_WEIGHT_LIMIT)) %>%
  select(!EVENT_MONTH) %>% 
  select(!EVENT_DAY_OF_WEEK) %>%
  select(!EVENT_TIME) %>%
  select(!TRANSACTION_ID) %>% 
  select(!USER_AGENT) %>%
  select(!CITY)

# create correlation data
cor_data <- data.frame(cor(train_data)) %>% select(FRAUD_FLAG) %>% rownames_to_column("category")

