library(tidyverse)
cpoe<-read_csv(file="cpoe 2.csv")
view(cpoe)

regression <- lm(data = cpoe, aDOT ~ cpoe)
regression
plot<-
 ggplot(data=cpoe)+
geom_point(mapping = aes(x = cpoe , y = aDOT), col = "red", size = 2.4) +
geom_abline(intercept = 8.19111, slope = 0.02174, col = "blue", size = 0.7) +
  geom_vline(data = cpoe, aes(xintercept = mean(cpoe)), col = 'darkgrey', alpha = 0.8) + 
  geom_hline(data = cpoe, aes(yintercept = mean(aDOT)), col = 'darkgrey', alpha = 0.8) +
labs(
x="CPOE",
y="aDOT",
title = "CPOE vs aDOT",
subtitle = "2019",
caption="data from airyards.com") +
theme_classic()
plot
summary(regression)
summarize(cpoe, correlation = cor(cpoe, aDOT))