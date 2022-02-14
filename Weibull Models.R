N = c(7.5, 6.63, 5.64, 4.53, 4.91, 4.72, 3.82, 3.23, 2.9, 2.7)
N1 = c(5.83, 5.56, 5.22, 4.83, 4.49, 3.89, 3.36, 2.64, 1.77, 0.4)
Time = c(0, 8, 24, 48, 72, 120, 168, 240, 336, 504)
prod = c(1,2,3,4)
weib = nls(N~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=8), trace = T)
weib2 = nls(N1~NO - (Time/delta)^p, start = list(NO =7, delta =5, p=1), trace = T)

model1 = lm(N1~Time)
model2 = lm(N~Time)
summary(model1)

AIC(weib)
AIC(weib2)
summary(weib)
anova(model2,model1)
library(rcompanion)
nagelkerke(weib, null = model1)
summary(weib)$r.squared
BIC(weib)
BIC(weib2)
plot(Time, N1)
lines(Time, predict(weib), col='blue')
cor(N, predict(weib))
?cor