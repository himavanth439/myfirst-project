# 1 sample z test #
fabric=read.csv(file.choose())
view(fabric)
library(BSDA)
library(nortest)
ad.test(fabric$Fabric_length) #andreson-darling test
# 1 sample Z-test #
z.test(fabric$Fabric_length,alternative = "two.sided",mu=150, sigma.x = 4, sigma.y = NULL, conf.level = 0.95)
# 1 sample t test #
bolt=read.csv(file.choose())
View(bolt)
# normality test #
ad.test(bolt$Diameter)
# 1 sample t-test #
t.test(bolt$Diameter, mu=10, alternative = "greater")
# 2 sample t-test #
promotion<-read.csv(file.choose())
attach(promotion)
colnames
# mann-whitney test #
additive=read.csv(file.choose())
additive
# NOrmality Test #
ad.test(additive$Without.additive)  # Aderson.darling Test #
ad.test(additive$With.Additive)
# Man-whitney Test #


# normality test #
shapiro.test(InterestRateWaiver)
shapiro.test(StandardPromotion)
# varience test #
var.test(InterestRateWaiver, StandardPromotion)
# 2 sample t-test #
t.test(InterestRateWaiver, StandardPromotion, alternative = "two.sided",conf.level = 0.95, correct= TRUE) #two sample test#
?t.test
t.test(InterestRateWaiver, StandardPromotion, alternative = "greater", var.equal = TRUE)
# proportional t test (johyfalkers data) #
johnytalkers<-read.csv(file.choose())
View(johnytalkers)
attach(johnytalkers)
table1 <- table(Icecream,Person)
table1
?prop.test
prop.test(x=c(58,152), n=c(480,740), conf.level = 0.95, correct = FALSE, alternative = "two.sided")
prop.test(x=c(58,152), n=c(480,740), conf.level = 0.95, correct = FALSE, alternative = "less")
# chi square #
bhaman <- read.csv(file.choose())
View(bhaman)
attach(bhaman)
table(Country,Defective)
chisq.test(table(Country,Defective))
# anova (contract_renewal data) #