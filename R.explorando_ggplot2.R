install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

ggplot(data=penguins)+geom_smooth(mapping = aes(x=flipper_length_mm, y= body_mass_g))


ggplot(data=penguins)+geom_smooth(mapping = aes(x=flipper_length_mm, y= body_mass_g)) + 
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g))

ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g))

ggplot(data=penguins)+geom_jitter(mapping = aes(x=flipper_length_mm, y= body_mass_g, color = species))


ggplot(data=penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm, y= body_mass_g, linetype = species))

data("diamonds")

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill=cut))

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill=clarity))

# facetas criam plots diferentes para a variavel
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)

ggplot(data=diamonds)+
geom_bar(mapping=aes(x=color,fill=cut))+
  facet_wrap(~cut)

#facet_wrap para uma unica variavel e facet_grid para varias
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, color=species))+
  facet_grid(sex~species)
