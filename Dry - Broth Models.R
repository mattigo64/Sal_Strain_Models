model1 = lm(`PT30-DB`~Time, data = WM)
summary(model1)
AIC(model1)
pred1=predict(model1)
db1=WM$`PT30-DB`
RMSE(pred1,db1)

model2 = lm(`PT13a-DB`~Time, data = WM)
summary(model2)
AIC(model2)
pred2=predict(model2)
db2=WM$`PT13a-DB`
RMSE(pred2,db2)


model3 = lm(`LJH1234-DB`~Time, data = WM)
summary(model3)
AIC(model3)
pred3=predict(model3)
db3=WM$`LJH1234-DB`
RMSE(pred3,db3)


model4 = lm(`LJH614-DB`~Time, data = WM)
summary(model4)
AIC(model4)
pred4=predict(model4)
db4=WM$`LJH614-DB`
RMSE(pred4,db4)


model5 = lm(`DT104-DB`~Time, data = WM)
summary(model5)
AIC(model5)
pred5=predict(model5)
db5=WM$`DT104-DB`
RMSE(pred5,db5)

model6 = lm(`FSIS-DB`~Time, data = WM)
summary(model6)
AIC(model6)
pred6=predict(model6)
db6=WM$`FSIS-DB`
RMSE(pred6,db6)


model7 = lm(`CT-DB`~Time, data = WM)
summary(model7)
AIC(model7)
pred7=predict(model7)
db7=WM$`CT-DB`
RMSE(pred7,db7)


weib1 = nls(`PT30-DB`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1)
AIC(weib1)
predw1=predict(weib1,WM)
RMSE(predw1,WM$`PT30-DB`)
anova(weib1,model1)
plot(`PT30-DB`~Time, data =WM)
lines(Time, data = WM, predict(weib1), col='blue')

weib2 = nls(`PT13a-DB`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2)
AIC(weib2)
predw2=predict(weib2,WM)
RMSE(predw2,WM$`PT13a-DB`)
anova(weib2,model2)

weib3 = nls(`LJH1234-DB`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3)
AIC(weib3)
predw3=predict(weib3,WM)
RMSE(predw3,WM$`LJH1234-DB`)
anova(weib3,model3)
plot(`LJH1234-DB`~Time, data =WM)
lines(Time, data = WM, predict(weib3), col='blue')


weib4 = nls(`LJH614-DB`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4)
AIC(weib4)
predw4=predict(weib4,WM)
RMSE(predw4,WM$`LJH614-DB`)
anova(weib4,model4)

weib5 = nls(`DT104-DB`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5)
AIC(weib5)
predw5=predict(weib5,WM)
RMSE(predw5,WM$`DT104-DB`)
anova(weib5,model5)

weib6 = nls(`FSIS-DB`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6)
AIC(weib6)
predw6=predict(weib6,WM)
RMSE(predw6,WM$`FSIS-DB`)
anova(weib6,model6)

weib7 = nls(`CT-DB`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7)
AIC(weib7)
predw7=predict(weib7,WM)
RMSE(predw7,WM$`CT-DB`)
anova(weib7,model7)
