install.packages("tidyverse")
library(tidyverse)

# organizado por colunas
# crescente
penguins %>% arrange(bill_length_mm)

# descrescente 
penguins %>% arrange(-bill_length_mm)

# salvando nova ordem em um novo df
penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)

penguins %>%
  group_by(island) %>%
  drop_na() %>%
  summarise(flipper_length_mm = max(flipper_length_mm))

penguins %>%
  group_by(island, species) %>%
  drop_na() %>%
  summarise(fmax = max(flipper_length_mm),bl = mean(bill_length_mm))

# filtros
penguins %>% filter(species == "Adelie")
