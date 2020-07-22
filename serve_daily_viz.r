library(tidyverse)
firstserve <- read_csv(file="Firstservepercentdailyviz.csv")
#I was having trouble loading in the ace csv so I just copied and pasted in the dataset
ace <- read.table(pipe("pbpaste"), sep="\t", header = TRUE)

serve<-
  firstserve %>%
  inner_join(ace, by="name")
serve

serve <-
  serve %>% 
  select(name, value.x, value.y)
serve

serve <-
  serve %>% 
  rename(first_serve_percent = value.x)
serve <-
  serve %>% 
  rename(ace_percent = value.y)
serve

# I was having trouble cleaning the data so I brought it out to excel and then brought it back in
write_csv(serve, "file=serve_daily_viz.csv")
servefinal <- read_csv(file="file_serve_daily_viz_done.csv")
servefinal

#servefinal is in the github

regression <- lm(data = servefinal, first_serve_percent ~ ace_percent)
regression
plot<-
 ggplot(data=servefinal)+
    geom_point(mapping = aes(x = ace_percent , y = first_serve_percent), size = 3, alpha = 0.45, col = 'blue') +
    geom_abline(intercept = 62.4288, slope = -0.0442, col = "red") +
  labs(
    x="Ace percentage",
    y="First serve percentage",
    title = "Ace percentage vs First serve percentage",
    subtitle = "ATP Tour 2019, minimum 750 serves",
    caption="Data from Ultimate Tennis Statistics, graph made in RStudio")
plot
summarize(servefinal, correlation = cor(ace_percent, first_serve_percent))

view(servefinal)
 #Anything under this was written simply for experimental purposes

#plot2 <-
 # ggplot(data = servefinal)+
  #geom_bin2d(mapping = aes(x = ace_percent, y = first_serve_percent), bins = 15)
#plot2

#plot3 <-
 # ggplot(data = servefinal)+
  #geom_point(mapping = aes(x = ace_percent, y = first_serve_percent), alpha = 0.1))
#plot3
#plot3 <-
 # ggplot(data = servefinal) + 
  #geom_point(mapping = aes(x = ace_percent, y = first_serve_percent), size = 3, alpha = 0.45, col = 'blue')
#plot3
