# trabalhando com dataframes
# instalando pacotes
install.packages('tidyverse')
library(ggplot2)
library(tidyverse)

# carregando df
data("diamonds")
# visualizando df
View(diamonds)
# para visualizar as primeiras linhas do df
head(diamonds)

# para visualizar extrutura do df
str(diamonds)

# para vizualizar nome das colunas
colnames(diamonds)

# alterando df
mutate(diamonds, carat_2=carat*100)

#criando um df do zero
names <- c(" ", " ", " ", " ")
age <- c(" ", " ", " ", " ")

people <- data.frame(names, age)

head(people)
str(people)
glimpse(people)
colnames(people)

# exercicio teste
