model1 = lm(`PT30-L`~Time, data = WM)
summary(model1)
AIC(model1)
pred1=predict(model1,WM)
RMSE(pred1,WM$`PT30-L`)


model2 = lm(`PT13a-L`~Time, data = WM)
summary(model2)
AIC(model2)
pred2=predict(model2,WM)
RMSE(pred2,WM$`PT13a-L`)


model3 = lm(`LJH1234-L`~Time, data = WM)
summary(model3)
AIC(model3)
pred3=predict(model3,WM)
RMSE(pred3,WM$`LJH1234-L`)


model4 = lm(`LJH614-L`~Time, data = WM)
summary(model4)
AIC(model4)
pred4=predict(model4,WM)
RMSE(pred4,WM$`LJH614-L`)


model5 = lm(`DT104-L`~Time, data = WM)
summary(model5)
AIC(model5)
pred5=predict(model5,WM)
RMSE(pred5,WM$`DT104-L`)


model6 = lm(`FSIS-L`~Time, data = WM)
summary(model6)
AIC(model6)
pred6=predict(model6,WM)
RMSE(pred6,WM$`FSIS-L`)


model7 = lm(`CT-L`~Time, data = WM)
summary(model7)
AIC(model7)
pred7=predict(model7,WM)
RMSE(pred7,WM$`CT-L`)


weib1 = nls(`PT30-L`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=8), trace = T, data = WM)
summary(weib1)
AIC(weib1)
predw1=predict(weib1,WM)
RMSE(predw1,WM$`PT30-L`)
anova(weib1,model1)
plot(`FSIS-L`~Time, data =WM)
lines(Time, data = WM, predict(weib6), col='blue')

weib2 = nls(`PT13a-L`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=8), trace = T, data = WM)
summary(weib2)
AIC(weib2)
predw2=predict(weib2,WM)
RMSE(predw2,WM$`PT13a-L`)
anova(weib2,model2)

weib3 = nls(`LJH1234-L`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=8), trace = T, data = WM)
summary(weib3)
AIC(weib3)
predw3=predict(weib3,WM)
RMSE(predw3,WM$`LJH1234-L`)
anova(weib3,model3)

weib4 = nls(`LJH614-L`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=8), trace = T, data = WM)
summary(weib4)
AIC(weib4)
predw4=predict(weib4,WM)
RMSE(predw4,WM$`LJH614-L`)
anova(weib4,model4)

weib5 = nls(`DT104-L`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=8), trace = T, data = WM)
summary(weib5)
AIC(weib5)
predw5=predict(weib5,WM)
RMSE(predw5,WM$`DT104-L`)
anova(weib5,model5)

weib6 = nls(`FSIS-L`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=8), trace = T, data = WM)
summary(weib6)
AIC(weib6)
predw6=predict(weib6,WM)
RMSE(predw6,WM$`FSIS-L`)
anova(weib6,model6)

weib7 = nls(`CT-L`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=8), trace = T, data = WM)
summary(weib7)
AIC(weib7)
predw7=predict(weib7,WM)
RMSE(predw7,WM$`CT-L`)
anova(weib7, model7)