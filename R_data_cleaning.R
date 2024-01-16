# data cleaning
install.packages("dplyr") # data manipulation
install.packages("here") # facilita a referencia dos arquivos
install.packages("skimr") # resumo dos dados com facilidade
install.packages("janitor") #contem funcoes para data cleaning
install.packages("palmerpenguins")
library("dplyr")
library("here")
library("skimr")
library("janitor")
library("palmerpenguins")

# resumos do df
skim_without_charts(penguins) # sumario do df
glimpse(penguins)
head(penguins)

# selecionando colunas
penguins %>%
  select(species) # "-species" tras o contrário

# renomeando colunas
penguins %>%
  rename(islan_new = island)

# mudando nome com condicoes
penguins %>%
  rename_with(penguins, to uppper)

# garante que tenha somente caracteres, numeros e _ nos nomes
clean_names(penguins)
