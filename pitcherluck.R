library(tidyverse)
pitcherluck <- read_csv(file = 'pitcherluck.csv')
view(pitcherluck)

plot1<-
 ggplot(data=pitcherluck)+
geom_point(mapping = aes(x = batting_avg , y = xba), col = "red") +
geom_abline(data = pitcherluck, aes(intercept = 0, slope = 1), col = 'blue') +
labs(
x="Batting average",
y="Expected batting average",
title = "Batting average against vs expected batting average against",
subtitle = "Qualified pitchers, 2019",
caption="data from Baseball Savant, graph made in RStudio") +
theme_bw()
plot1

plot2<-
  ggplot(data=pitcherluck)+
  geom_point(mapping = aes(x = slg_percent , y = xslg), col = "red") +
  geom_abline(data = pitcherluck, aes(intercept = 0, slope = 1), col = 'blue') +
  labs(
    x="Slugging percentage",
    y="Expected slugging percentage",
    title = "Slugging percentage against vs expected slugging percentage against",
    subtitle = "Qualified pitchers, 2019",
    caption="data from Baseball Savant, graph made in RStudio") +
  theme_bw()
plot2

plot3<-
  ggplot(data=pitcherluck)+
  geom_point(mapping = aes(x = isolated_power , y = xiso), col = "red") +
  geom_abline(data = pitcherluck, aes(intercept = 0, slope = 1), col = 'blue') +
  labs(
    x="Isolated power",
    y="Expected isolated power",
    title = "Isolated power against vs expected isolated power against",
    subtitle = "Qualified pitchers, 2019",
    caption="data from Baseball Savant, graph made in RStudio") +
  theme_bw()
plot3

plot4<-
  ggplot(data=pitcherluck)+
  geom_point(mapping = aes(x = woba , y = xwoba), col = "red") +
  geom_abline(data = pitcherluck, aes(intercept = 0, slope = 1), col = 'blue') +
  labs(
    x="wOBA",
    y="xwOBA",
    title = "wOBA against vs xwOBA against",
    subtitle = "Qualified pitchers, 2019",
    caption="data from Baseball Savant, graph made in RStudio") +
  theme_bw()
plot4
