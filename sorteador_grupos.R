

# Script para sorteio de pacientes em grupos ------------------------------


# Instalação/habilitação de pacote necessário para o script-----------------------------

#install.packages("experiment")
library (experiment)
library(xlsx)


# Criação de dataframe com id dos pacientes -------------------------------

paciente <-
  data.frame(identificacao = paste0("Id", c(1:20))) ## criação dos ids com a quantidade de pacientes do estudo, função randomize necessita de dataframe como argumento


set.seed(3)# número é aleatório, mas fornece a mesma resposta infinitamente, exatamente para ser reprodutível

rand <-
randomize(paciente, group = c("tera_sex", "cart_sex")) ## função que faz o processo de randomização, no 2º argumento devemos colocar o nome dos grupos/intervenção


alocacao <-
  rand$treatment # o objeto treatment retorna a randomização em si

rand_lo <-
  data.frame(cbind(paciente, alocacao)) #juntando os ids com o sorteio, ou seja, dois data 


# salvando em excel -------------------------------------------------------

write.xlsx(rand_lo,file="randomização_lorenza.xlsx")
