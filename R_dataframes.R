# dataframes em R
data.frame(coluna_1=c("a", "b", "c"), y=c(1, 2, 3))

# arquivos em R
# criando nova pasta ou diretorio
dir.create("destination_folder")

# criando arquivo em branco
file.create("new_text_file.txt")
file.create("new_cs_file.csv")

# copiando arquivos
file.copy("new_text_file.txt", "destination_folder")

#excluindo arquivos
unlink("new_text_file.txt")
unlink("new_cs_file.csv")
