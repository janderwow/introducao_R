# introducao a tibbles
# reimaginacao mordena do data.frame em R
# tible retorna somente as 10 primeiras linhas

as_tibble(diamonds)


exemplo_tibble <- tibble(
  x = 1:10,
  y = 2,
  z = x ^ 2 + y
)

exemplo_tibble
