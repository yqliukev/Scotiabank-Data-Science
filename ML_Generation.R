library(caret)

train_glm <- train(FRAUD_FLAG ~., method = "glm", data = train_data)
# train_knn <- train(FRAUD_FLAG ~ ., method = "knn", data = train_data)

y_hat_glm <- predict(train_glm, test_data, type = "raw")
# y_hat_knn <- predict(train_knn, test_data, type = "raw")