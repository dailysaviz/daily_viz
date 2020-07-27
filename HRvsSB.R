library(tidyverse)
HRvsSB <- read_csv(file = "HRvsSB.csv")
HRvsSB <- 
  HRvsSB %>% 
  select(Name, HR, SB)

regression <- lm(data = HRvsSB, SB ~ HR)
regression
plot<-
  ggplot(data=HRvsSB)+
  geom_point(mapping = aes(x = HR , y = SB), col = "blue") +
  geom_abline(intercept = 12.5449, slope = -0.1557, col = "red") +
  labs(
    x="HR",
    y="SB",
    title = "Home runs vs Stolen bases",
    subtitle = "2019",
    caption="Data from Fangraphs, graph made in RStudio") +
  theme_bw()
plot
summary(plot)
summarize(HRvsSB, correlation = cor(HR, SB))