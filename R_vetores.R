# explorando vetores

# criando vetor numerico
c(2.5, 48.5, 101.5)

# criando vetor de numero inteiro
c(1L, 5L, 15L)

# criando vetor com string
c("Jander", "WoW", "Dados")

# criando vetor logico
c(TRUE, FALSE, TRUE)

# verificando tipo do vetor
typeof(c("a", "b"))

typeof(c(1L, 2L))

# verificando comprimento do vetor
x <- c(33.5, 57.75, 120.05)
length(x)

# verificando se vetor é de determinado tipo
z <- c(2L, 5L, 11L)
is.integer(z)

y <- c(TRUE, FALSE)
is.character(y)

# nomeando vetores
w<-c(1,3,5,6)
names(w)<-c("a", "b", "c")
w
