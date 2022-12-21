### Funções para cálculos Educação Física


# função para cálculo de imc (altura em metros)

imc <- function (peso, altura) {
  imc <- peso / altura ^ 2 # função matématica
  imc # é necessário chamar a função para printar
}

# relação cintura-quadril (medidas em cm)

rcq <- function (cintura, quadril) {
  rcq <- cintura / quadril
  rcq
}


# Frequência cardiaca máxima (TANAKA)

fc <- function(idade) {
  fc<- (208-0.7) - idade
  fc
}


# Vo² Máx teste de 12min Cooper (distância em metros)

vo2_cooper <- function(distancia) {
  vo2_cooper <- (distancia - 504)/45
  vo2_cooper
}


