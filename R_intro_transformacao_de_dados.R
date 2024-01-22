# transformacao de dados
install.packages("tidyr")
library(tidyr)


id <- c(1:10)

nome <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

id_cargo <- c("Profissional", "Programador", "Gerencia", "Administrativo", "Desenvolvedor", "Programador", "Gerencia", "Administrativo", "Desenvolvedor", "Programador")


empregado <- data.frame(id, nome, id_cargo)

print(empregado)

# separa uma coluna em multiplas colunas
separate(empregado, nome, into=c('first_name', 'last_name'), sep=' ')

# unindo colunas colunas
first_name <- c("Jander", "Rob", "Rachel")
last_name <- c("Melo", "Stewart", "Abrahamson")
job_title <- c("Data Analyst", "Programmer", "Management")

empregados_2 <- data.frame(first_name, last_name, job_title)

unite(empregados_2, 'name', first_name, last_name, sep = ' ')

# criando novas colunas calculadas com mutate
install.packages("palmerpenguins")
library(palmerpenguins)
penguins %>%
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)
