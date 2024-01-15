# basico sobre importacao de dados

# exibindo datasets contidos em R

data()
data(mtcars)
mtcars

# lendo arquivos csv com readr

install.packages("tidyverse")
library(tidyverse)

read_csv(readr_example("mtcars.csv"))

str(read_csv(readr_example("mtcars.csv")))

# importar planilhas de excel
library(readxl)
read_excel(readxl_example("type-me.xlsx"))  
