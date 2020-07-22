library(tidyverse)
#copying and pasting in the data... the data is on the github
Shootout <- read.table(pipe("pbpaste"), sep="\t", header = TRUE)

ggplot(data = Shootout) + geom_histogram(mapping = aes(x = shootout_percent), bins=15, col = 'lightgray')+
  theme_classic()+
  labs(
    x="shootout percent",
    y="number of players",
    title = "Distribution of Shootout Success Rates in the NHL",
    subtitle = "Players with over 25 shootout shots in their career",
    caption="Data from NHL.com, graph made in RStudio")