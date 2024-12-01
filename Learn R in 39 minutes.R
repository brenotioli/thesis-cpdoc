# Learn R in 39 minutes
# Video: https://www.youtube.com/watch?v=yZ0bV2Afkjc

library(tidyverse)

# Indispensable keyboard shortcuts in RStudio: 
# (1) assignment operator ( <- ): Alt + -
# (2) pipe operator ( %>% ): Ctrl + Shift + M


data()
?mpg
glimpse(mpg)
# subset by rows with FILTER
filter(mpg, cty >= 20)
mpg_e<-filter(mpg, cty >= 20)
# add a new column
mpg_metric<-mutate(mpg, cty_metric=0.425) 

mpg %>% 
  group_by(class) %>% 
  summarise(mean(cty), 
            median(cty))

# Data viz with ggplot2

ggplot(mpg, aes(x=cty)) + 
  geom_histogram() + 
  geom_freqpoly() + 
  labs(x="City mileage")

ggplot(mpg, aes(x=cty, y=hwy)) + 
  geom_point() +
  geom_smooth(method = lm)

ggplot(mpg, aes(x=cty, y=hwy, color=class)) + 
  geom_point()




