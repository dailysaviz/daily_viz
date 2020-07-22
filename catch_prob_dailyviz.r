library(tidyverse)
catch_prob <- read_csv(file="catch_probability.csv")
catch_prob
catch_prob <-
  catch_prob %>% 
  select(last_name, first_name, oaa, n_5star_percent, n_4star_percent, n_3star_percent, n_2star_percent, n_1star_percent)
catch_prob

regression5star <- lm(data = catch_prob, oaa ~ n_5star_percent)
regression5star
regression4star <- lm(data = catch_prob, oaa ~ n_4star_percent)
regression4star
regression3star <- lm(data = catch_prob, oaa ~ n_3star_percent)
regression3star
regression2star <- lm(data = catch_prob, oaa ~ n_2star_percent)
regression2star
regression1star <- lm(data = catch_prob, oaa ~ n_1star_percent)
regression1star
plot5star<-
  ggplot(data=catch_prob)+
  geom_point(mapping = aes(x = n_5star_percent , y = oaa), col = 'springgreen4') +
  geom_abline(intercept = -7.850, slope = 1.768, col = 'darkblue') +
  labs(
    x="Catch percentage",
    y="OAA",
    title = "Catch percentage on 5 star plays vs Total OAA",
    subtitle = "2016-2019 (r=0.623)",
    caption="Data from Baseball Savant, graph made in RStudio")+
  theme_bw()
plot5star
summary(regression5star)
summarize(catch_prob, correlation = cor(n_5star_percent, oaa))

plot4star<-
  ggplot(data=catch_prob)+
  geom_point(mapping = aes(x = n_4star_percent , y = oaa), col = 'springgreen4') +
  geom_abline(intercept = -16.133, slope = 0.529, col = 'darkblue') +
  labs(
    x="Catch percentage",
    y="OAA",
    title = "Catch percentage on 4 star plays vs Total OAA",
    subtitle = "2016-2019 (r=0.704)",
    caption="Data from Baseball Savant, graph made in RStudio")+
  theme_bw()
plot4star
summary(regression4star)
summarize(catch_prob, correlation = cor(n_4star_percent, oaa))

plot3star<-
  ggplot(data=catch_prob)+
  geom_point(mapping = aes(x = n_3star_percent , y = oaa), col = 'springgreen4') +
  geom_abline(intercept = -40.0284, slope = 0.6136, col = 'darkblue') +
  labs(
    x="Catch percentage",
    y="OAA",
    title = "Catch percentage on 3 star plays vs Total OAA",
    subtitle = "2016-2019 (r=0.675)",
    caption="Data from Baseball Savant, graph made in RStudio")+
  theme_bw()
plot3star
summary(regression3star)
summarize(catch_prob, correlation = cor(n_3star_percent, oaa))

plot2star<-
  ggplot(data=catch_prob)+
  geom_point(mapping = aes(x = n_2star_percent , y = oaa), col = 'springgreen4') +
  geom_abline(intercept = -82.3958, slope = 0.9592, col = 'darkblue') +
  labs(
    x="Catch percentage",
    y="OAA",
    title = "Catch percentage on 2 star plays vs Total OAA",
    subtitle = "2016-2019 (r=0.544)",
    caption="Data from Baseball Savant, graph made in RStudio")+
  theme_bw()
plot2star
summary(regression2star)
summarize(catch_prob, correlation = cor(n_2star_percent, oaa))

plot1star<-
  ggplot(data=catch_prob)+
  geom_point(mapping = aes(x = n_1star_percent , y = oaa), col = 'springgreen4') +
  geom_abline(intercept = -90.8129, slope = 0.9906, col = 'darkblue') +
  labs(
    x="Catch percentage",
    y="OAA",
    title = "Catch percentage on 1 star plays vs Total OAA",
    subtitle = "2016-2019 (r=0.375)",
    caption="Data from Baseball Savant, graph made in RStudio")+
  theme_bw()
plot1star
summary(regression1star)
summarize(catch_prob, correlation = cor(n_1star_percent, oaa))