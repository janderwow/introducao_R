# explorando listas
# em listas elementos podem ser de qualquer tipo
list("a", 1L, 1.5, TRUE)

# lista dentro de lista
list(list(1, 3, 5))

# verificando tipos dos elementos com str()
str(list("a", 1L, 1.56, TRUE))

z <-list(list(list(1, 3, 5)))
str(z)

# nomeando listas
list('Chicago' = 1, 'New York'=2, 'Los Angeles'=3)
