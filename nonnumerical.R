mydata <- read.csv("C:/Users/zhaom/Downloads/Winter 2023 Discovery Days/train_ScotiaDSD.csv")

mydata$FLAG_MORNING <- as.numeric("12:00" >= mydata$EVENT_TIME & mydata$EVENT_TIME >= "0:00")
mydata$FLAG_AFTERNOON <- as.numeric("17:00" >= mydata$EVENT_TIME & mydata$EVENT_TIME > "12:00")
mydata$FLAG_EVENING <- as.numeric("23:59" >= mydata$EVENT_TIME & mydata$EVENT_TIME > "17:00")
  
mydata$FLAG_Q1 <- as.numeric(1 <= mydata$EVENT_MONTH & mydata$EVENT_MONTH < 4)
mydata$FLAG_Q2 <- as.numeric(4 <= mydata$EVENT_MONTH & mydata$EVENT_MONTH < 7)
mydata$FLAG_Q3 <- as.numeric(7 <= mydata$EVENT_MONTH & mydata$EVENT_MONTH < 10)
mydata$FLAG_Q4 <- as.numeric(10 <= mydata$EVENT_MONTH & mydata$EVENT_MONTH < 12)
