library(tidyverse)
walkandstrikeout <- read_csv(file = "walkandstrikeout.csv")
walkandstrikeout <- 
  walkandstrikeout %>% 
  select(Name, BB, K)

regression <- lm(data = walkandstrikeout, K ~ BB)
regression
plot<-
 ggplot(data=walkandstrikeout)+
geom_point(mapping = aes(x = BB , y = K), col = "blue") +
geom_abline(intercept = 17.0619, slope = 0.3292, col = "red") +
labs(
x="BB%",
y="K%",
title = "BB% vs K%",
subtitle = "2019",
caption="Data from Fangraphs, graph made in RStudio") +
theme_bw()
plot
summary(plot)
summarize(walkandstrikeout, correlation = cor(BB, K))



