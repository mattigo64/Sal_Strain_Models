library(readxl)
WM=read_excel("~/Dropbox/Matt Igo - Schaffner Lab/Dissertation/Lab Strain Survival Experiments/Results/Whole Milk Powder Survival Experiments.xlsx", 
                  sheet = "Data.Weib")


#############Wet-Broth
weib1.1 = nls(`PT30-B.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.1)

weib1.2 = nls(`PT30-B.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.2)

weib1.3 = nls(`PT30-B.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.3)

weib2.1 = nls(`PT13a-B.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.1)

weib2.2 = nls(`PT13a-B.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.2)

weib2.3 = nls(`PT13a-B.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.3)

weib3.1 = nls(`LJH1234-B.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.1)

weib3.2 = nls(`LJH1234-B.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.2)

weib3.3 = nls(`LJH1234-B.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.3)


weib4.1 = nls(`LJH614-B.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.1)

weib4.2 = nls(`LJH614-B.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.2)

weib4.3 = nls(`LJH614.B.3`~NO - (Time/delta)^p, start = list(delta =.005, p=.05, NO=5), trace = T, data = WM)
summary(weib4.3)
nlsLM(`LJH614.B.3`~NO - (Time/delta)^p, start = list(delta =20, p=.5, NO=5),data=WM)

weib5.1 = nls(`DT104-B.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.1)

weib5.2 = nls(`DT104-B.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.2)

weib5.3 = nls(`DT104-B.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.3)

weib6.1 = nls(`FSIS.B.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.1)

nlsLM(WM$`FSIS.B.1`~NO - (Time/delta)^p, start = list(delta =50, p=1, NO=5), data=WM)

weib6.2 = nls(`FSIS-B.2`~NO - (Time/delta)^p, start = list(delta =60, p=.2, NO=4), trace = T, data = WM)
summary(weib6.2)
nlsLM(WM$`FSIS.B.2`~NO - (Time/delta)^p, start = list(delta =60, p=.2, NO=5), data=WM)

weib6.3 = nls(`FSIS-B.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.3)
nlsLM(WM$`FSIS.B.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), data=WM)


weib7.1 = nls(`CT-B.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.1)

weib7.2 = nls(`CT-B.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.2)

weib7.3 = nls(`CT-B.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.3)
#####################Wet-Lawn
weib1.1 = nls(`PT30.L.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.1)
nlsLM(`PT30.L.1`~NO - (Time/delta)^p, start = list(delta =1100000, p=.1, NO=8), trace=T, data = WM)

weib1.2 = nls(`PT30-L.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.2)

weib1.3 = nls(`PT30-L.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.3)

weib2.1 = nls(`PT13a-L.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.1)

weib2.2 = nls(`PT13a-L.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.2)

weib2.3 = nls(`PT13a-L.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.3)

weib3.1 = nls(`LJH1234.L.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.1)
nlsLM(`LJH1234.L.1`~NO - (Time/delta)^p, start = list(delta =1000, p=1, NO=5), trace = T, data = WM)
weib3.2 = nls(`LJH1234-L.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.2)

weib3.3 = nls(`LJH1234-L.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.3)


weib4.1 = nls(`LJH614.L.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.1)
nlsLM(`LJH614.L.1`~NO - (Time/delta)^p, start = list(delta =100000000, p=.01, NO=8), trace = T, data = WM)

weib4.2 = nls(`LJH614-L.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.2)

weib4.3 = nls(`LJH614-L.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.3)

weib5.1 = nls(`DT104-L.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.1)

weib5.2 = nls(`DT104-L.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.2)

weib5.3 = nls(`DT104-L.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.3)

weib6.1 = nls(`FSIS-L.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.1)

weib6.2 = nls(`FSIS-L.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.2)

weib6.3 = nls(`FSIS-L.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.3)

weib7.1 = nls(`CT-L.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.1)

weib7.2 = nls(`CT-L.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.2)

weib7.3 = nls(`CT-L.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.3)
#######################Dry-Broth
weib1.1 = nls(`PT30-DB.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.1)

weib1.2 = nls(`PT30-DB.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.2)

weib1.3 = nls(`PT30-DB.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.3)

weib2.1 = nls(`PT13a-DB.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.1)

weib2.2 = nls(`PT13a-DB.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.2)

weib2.3 = nls(`PT13a-DB.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.3)

weib3.1 = nls(`LJH1234-DB.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.1)

weib3.2 = nls(`LJH1234-DB.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.2)

weib3.3 = nls(`LJH1234-DB.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.3)


weib4.1 = nls(`LJH614-DB.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.1)

weib4.2 = nls(`LJH614-DB.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.2)

weib4.3 = nls(`LJH614-DB.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.3)

weib5.1 = nls(`DT104-DB.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.1)

weib5.2 = nls(`DT104-DB.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.2)

weib5.3 = nls(`DT104-DB.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.3)

weib6.1 = nls(`FSIS-DB.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.1)

weib6.2 = nls(`FSIS-DB.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.2)

weib6.3 = nls(`FSIS-DB.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.3)

weib7.1 = nls(`CT-DB.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.1)

weib7.2 = nls(`CT-DB.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.2)

weib7.3 = nls(`CT-DB.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.3)
#####################Dry-Lawn
weib1.1 = nls(`PT30-DL.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.1)

weib1.2 = nls(`PT30-DL.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.2)

weib1.3 = nls(`PT30-DL.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib1.3)

weib2.1 = nls(`PT13a-DL.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.1)

weib2.2 = nls(`PT13a.DL.2`~NO - (Time/delta)^p, start = list(delta =10, p=1, NO=5), trace = T, data = WM)
summary(weib2.2)
nlsLM(`PT13a.DL.2`~NO - (Time/delta)^p, start = list(delta =10, p=1, NO=5), trace = T, data = WM)

weib2.3 = nls(`PT13a-DL.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib2.3)

weib3.1 = nls(`LJH1234-DL.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.1)

weib3.2 = nls(`LJH1234-DL.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.2)

weib3.3 = nls(`LJH1234-DL.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib3.3)


weib4.1 = nls(`LJH614-DL.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.1)

weib4.2 = nls(`LJH614-DL.2`~NO - (Time/delta)^p, start = list(delta =3.5, p=0.5, NO=7), trace = T, data = WM)
summary(weib4.2)

weib4.3 = nls(`LJH614-DL.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib4.3)

weib5.1 = nls(`DT104-DL.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.1)

weib5.2 = nls(`DT104-DL.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.2)

weib5.3 = nls(`DT104-DL.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib5.3)

weib6.1 = nls(`FSIS-DL.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.1)

weib6.2 = nls(`FSIS-DL.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.2)

weib6.3 = nls(`FSIS-DL.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib6.3)

weib7.1 = nls(`CT-DL.1`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.1)

weib7.2 = nls(`CT-DL.2`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.2)

weib7.3 = nls(`CT-DL.3`~NO - (Time/delta)^p, start = list(delta =5, p=1, NO=5), trace = T, data = WM)
summary(weib7.3)
#######################

