# Install these packages 
pkgs = c("klaR", "ElemStatLearn") 
install.packages(pkgs)  
library('ElemStatLearn') 
library("klaR") 
library("caret")  

# Split the data in training and testing 
inx = sample(nrow(spam), round(nrow(spam) * 0.9)) 
train = spam[inx,] 
test = spam[-inx,]  

# Define a matrix with features, X_train 
# And a vector with class labels, y_train 
X_train = train[,-58] 
y_train = train$spam  
X_test = test[,-58] 
y_test = test$spam  
# Train the model 
nb_model = train(X_train, y_train, method = 'nb',  
                 trControl = trainControl(method = 'cv', number = 3)) 
tail(test)
# Compute  
preds = predict(nb_model$finalModel, X_test)$class 
tbl = table(y_test, yhat = preds) 
sum(diag(tbl)) / sum(tbl) 
str(preds)
# 0.7217391 
boost <- boosting(Personal.Loan ~ ., data = train.df)
pred <- predict(boost, valid.df)
confusionMatrix(as.factor(preds), as.factor(test$spam))
str(preds$class)
boost <- boosting(Personal.Loan ~ ., data = train.df)
pred <- predict(boost, valid.df)
confusionMatrix(as.factor(pred$class), as.factor(valid.df$Personal.Loan))

warnings()
