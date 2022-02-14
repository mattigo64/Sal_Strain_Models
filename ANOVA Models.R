library(readxl)
WM <- read_excel("~/Dropbox/Matt Igo - Schaffner Lab/Dissertation/Lab Strain Survival Experiments/Results/Whole Milk Powder Survival Experiments.xlsx", 
                                                     sheet = "Data_ANOVA")
ST=as.factor(WM$ST)
IN =as.factor(WM$IN)
GR = as.factor(WM$GR)
summary(aov(RT~ST+IN+GR+ST:GR+ST:IN+IN:GR,data=WM))
model1=lm(RT~ST+IN+GR+ST:GR+ST:IN+IN:GR,data=WM)
summary(model1)

TukeyHSD(aov(RT~ST+IN+GR,data=WM))

summary(aov(RT~ST,data=WM))

ST1=as.factor(WM$ST1)
summary(aov(RT1~ST1,data=WM))

ST2=as.factor(WM$ST2)
summary(aov(RT2~ST2,data=WM))

ST3=as.factor(WM$ST3)
summary(aov(RT3~ST3,data=WM))

ST4=as.factor(WM$ST4)
summary(aov(RT4~ST4,data=WM))

ST5=as.factor(WM$ST5)
IN5=as.factor(WM$IN5)
summary(aov(RT5~ST5+IN5,data=WM))

ST6=as.factor(WM$ST6)
IN6=as.factor(WM$IN6)
summary(aov(RT6~ST6+IN6,data=WM))

ST7=as.factor(WM$ST7)
GR7=as.factor(WM$GR7)
summary(aov(RT7~ST7+GR7,data=WM))

ST8=as.factor(WM$ST8)
GR8=as.factor(WM$GR8)
summary(aov(RT8~ST8+GR8,data=WM))






