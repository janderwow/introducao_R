install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g))

# mapeando variavel "species" com estetica de cor
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color =species))

# mapeando variavel "species" com estetica de forma
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, shape =species))

# combinando mapeamento
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color=species, shape=species, size=species))

# utilizando "alpha" para densidade dos pontos do gráfico
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, alpha = species, color = "purple"))

# mudando aparencia com variaveis especificas, utilizar fora da função "aes"
ggplot(data=penguins)+geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, alpha = species),color = "purple")
