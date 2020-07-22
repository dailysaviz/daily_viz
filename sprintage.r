library(tidyverse)
sprintspeed <- read_csv(file='sprint_speed.csv')
sprintspeed

sprintspeed <-
  sprintspeed %>% 
  select(last_name, first_name, age, sprint_speed)
sprintspeed

# What I wanted to do here was get average speed for each age and then graph it, but there
# has to be a better way than to manually write all of this out. If anybody is looking over
# this, and knows a better way, please message me on twitter. My username is @jakefederman
sprintspeed20 <-
  sprintspeed %>% 
  filter(age == 20) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed20
sprintspeed21 <-
  sprintspeed %>% 
  filter(age == 21) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed21
sprintspeed22 <-
  sprintspeed %>% 
  filter(age == 22) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed22
sprintspeed23 <-
  sprintspeed %>% 
  filter(age == 23) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed23
sprintspeed24 <-
  sprintspeed %>% 
  filter(age == 24) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed24
sprintspeed25 <-
  sprintspeed %>% 
  filter(age == 25) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed25
sprintspeed26 <-
  sprintspeed %>% 
  filter(age == 26) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed26
sprintspeed27 <-
  sprintspeed %>% 
  filter(age == 27) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed27
sprintspeed28 <-
  sprintspeed %>% 
  filter(age == 28) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed28
sprintspeed29 <-
  sprintspeed %>% 
  filter(age == 29) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed29
sprintspeed30 <-
  sprintspeed %>% 
  filter(age == 30) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed30
sprintspeed31 <-
  sprintspeed %>% 
  filter(age == 31) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed31
sprintspeed32 <-
  sprintspeed %>% 
  filter(age == 32) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed32
sprintspeed33 <-
  sprintspeed %>% 
  filter(age == 33) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed33
sprintspeed34 <-
  sprintspeed %>% 
  filter(age == 34) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed34
sprintspeed35 <-
  sprintspeed %>% 
  filter(age == 35) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed35
sprintspeed36 <-
  sprintspeed %>% 
  filter(age == 36) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed36
sprintspeed37 <-
  sprintspeed %>% 
  filter(age == 37) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed37
sprintspeed38 <-
  sprintspeed %>% 
  filter(age == 38) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed38
sprintspeed39 <-
  sprintspeed %>% 
  filter(age == 39) %>% 
  mutate(avg_speed = mean(sprint_speed))
sprintspeed39

#I then recorded all these average values in excel, and then graphed them in excel
