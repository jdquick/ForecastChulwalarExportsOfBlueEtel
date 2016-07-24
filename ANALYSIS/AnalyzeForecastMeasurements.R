# Get accuracy for each model for later use

Model_ses.accuracy <- accuracy(Model_ses)
Model_holt_1.accuracy <- accuracy(Model_holt_1)
Model_holt_2.accuracy <- accuracy(Model_holt_2)
Model_holt_3.accuracy <- accuracy(Model_holt_3)
Model_holt_4.accuracy <- accuracy(Model_holt_4)
Model_hw_1.accuracy <- accuracy(Model_hw_1)
Model_hw_2.accuracy <- accuracy(Model_hw_2)

# Put data into table for later use
table_models <- matrix(NA, nrow = 7, ncol = 5)
table_models[1,] <- c(Model_ses$model$aic, Model_ses$model$bic, Model_ses$model$aicc, Model_ses.accuracy[,"MAE"], Model_ses.accuracy[,"RMSE"])
table_models[2,] <- c(Model_holt_1$model$aic, Model_holt_1$model$bic, Model_holt_1$model$aicc, Model_holt_1.accuracy[,"MAE"], Model_holt_1.accuracy[,"RMSE"])
table_models[3,] <- c(Model_holt_2$model$aic, Model_holt_2$model$bic, Model_holt_2$model$aicc, Model_holt_2.accuracy[,"MAE"], Model_holt_2.accuracy[,"RMSE"])
table_models[4,] <- c(Model_holt_3$model$aic, Model_holt_3$model$bic, Model_holt_3$model$aicc, Model_holt_3.accuracy[,"MAE"], Model_holt_3.accuracy[,"RMSE"])
table_models[5,] <- c(Model_holt_4$model$aic, Model_holt_4$model$bic, Model_holt_4$model$aicc, Model_holt_4.accuracy[,"MAE"], Model_holt_4.accuracy[,"RMSE"])
table_models[6,] <- c(Model_hw_1$model$aic, Model_hw_1$model$bic, Model_hw_1$model$aicc, Model_hw_1.accuracy[,"MAE"], Model_hw_1.accuracy[,"RMSE"])
table_models[7,] <- c(Model_hw_2$model$aic, Model_hw_2$model$bic, Model_hw_2$model$aicc, Model_hw_2.accuracy[,"MAE"], Model_hw_2.accuracy[,"RMSE"])
colnames(table_models) <- c("aic", "bic", "aicc", "mae", "rmse")
rownames(table_models) <- c("SES", "H1", "H2", "H3", "H4", "HW1", "HW2")
table_models <- as.table(table_models)

# view table to ensure it looks as it is supposed to look
table_models

#check bar plot for aic
barplot(table_models[,"aic"], main = "AIC by Forecast Model", col = c("darkblue", "red", "green", "yellow", "cyan", "purple", "black"))

cat("As we can see, the Holt Winters 2 model (multiplicative) is slightly better 
than the rest because the AIC is slightly lower than the Holt Winters 1 model 
(additive) and lower than all the others models as well.")

#check bar plot for bic
barplot(table_models[,"bic"], main = "BIC by Forecast Model", col = c("darkblue", "red", "green", "yellow", "cyan", "purple", "black"))

cat("As we can see, the Holt Winters 2 model (multiplicative) is slightly better
than the rest because the BIC is slightly lower than the Holt Winters 1 model 
(additive) and lower than all the others models as well.")

#check bar plot for aic
barplot(table_models[,"aicc"], main = "AICC by Forecast Model", col = c("darkblue", "red", "green", "yellow", "cyan", "purple", "black"))

cat("As we can see, the Holt Winters 2 model (multiplicative) is slightly better
than the rest because the AICC is slightly lower than the Holt Winters 1 model 
(additive) and lower than all the others models as well.")

#check bar plot for MAE
barplot(table_models[,"mae"], main = "MAE by Forecast Model", col = c("darkblue", "red", "green", "yellow", "cyan", "purple", "black"))

cat("As we can see, the Holt Winters 2 model (multiplicative) is slightly better
than the rest because the MAE is slightly lower than the Holt Winters 1 model 
(additive) and lower than all the others models as well.")

#check bar plot for RMSE
barplot(table_models[,"rmse"], main = "RMSE by Forecast Model", col = c("darkblue", "red", "green", "yellow", "cyan", "purple", "black"))

cat("As we can see, the Holt Winters 2 model (multiplicative) is slightly better
than the rest because the RMSE is slightly lower than the Holt Winters 1 model 
(additive) and lower than all the others models as well.")

