library(tidyverse)
hitterluck <- read_csv(file = 'hitterluck.csv')
view(hitterluck)

plot1<-
  ggplot(data=hitterluck)+
  geom_point(mapping = aes(x = batting_avg , y = xba), col = "red") +
  geom_abline(data = hitterluck, aes(intercept = 0, slope = 1), col = 'blue') +
  labs(
    x="Batting average",
    y="Expected batting average",
    title = "Batting average vs expected batting average",
    subtitle = "Qualified hitters, 2019",
    caption="data from Baseball Savant, graph made in RStudio") +
  theme_bw()
plot1

plot2<-
  ggplot(data=hitterluck)+
  geom_point(mapping = aes(x = slg_percent , y = xslg), col = "red") +
  geom_abline(data = hitterluck, aes(intercept = 0, slope = 1), col = 'blue') +
  labs(
    x="Slugging percentage",
    y="Expected slugging percentage",
    title = "Slugging percentage vs expected slugging percentage",
    subtitle = "Qualified hitters, 2019",
    caption="data from Baseball Savant, graph made in RStudio") +
  theme_bw()
plot2

plot3<-
  ggplot(data=hitterluck)+
  geom_point(mapping = aes(x = isolated_power , y = xiso), col = "red") +
  geom_abline(data = hitterluck, aes(intercept = 0, slope = 1), col = 'blue') +
  labs(
    x="Isolated power",
    y="Expected isolated power",
    title = "Isolated power vs expected isolated power",
    subtitle = "Qualified hitters, 2019",
    caption="data from Baseball Savant, graph made in RStudio") +
  theme_bw()
plot3

plot4<-
  ggplot(data=hitterluck)+
  geom_point(mapping = aes(x = woba , y = xwoba), col = "red") +
  geom_abline(data = hitterluck, aes(intercept = 0, slope = 1), col = 'blue') +
  labs(
    x="wOBA",
    y="xwOBA",
    title = "wOBA vs xwOBA",
    subtitle = "Qualified hitters, 2019",
    caption="data from Baseball Savant, graph made in RStudio") +
  theme_bw()
plot4