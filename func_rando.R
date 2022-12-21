
# função para criar aleatorização de experimento --------------------------

aleatorizacao <- 
  function(n_trat, n_participantes){
  trat <- paste("trat",1:n_trat, sep="_")
  trat <- rep(trat, n_participantes)
  id_paciente <- 1:n_participantes
  matriz <- cbind(trat,id_paciente)
  ID <- 1:nrow(matriz)
  ID <- sample(ID, )
  matriz <-  matriz[ID,]
  return(matriz)
}


 # Fixa aleatorizacao, não retirar se deseja consultar em outro momento


lorenza <- as.data.frame(aleatorizacao(2,10))


NumTrat=5
NumRep=4

AleatorizarDIC=function(NumTrat,NumRep){
  Tratamentos=paste("trat",1:NumTrat,sep="_")
  Tratamentos=rep(Tratamentos,NumRep)
  Repetições=rep(1:NumRep, each=NumTrat)
  Mat=cbind(Tratamentos,Repetições)
  ID=1:nrow(Mat)
  ID=sample(ID, replace = FALSE)
  
  Mat=Mat[ID,]
  return(Mat)
}


AleatorizarDIC(10,4)

y = (1:20) # vetor com numeros aleatorios
amostra = sample(y, 10, replace = FALSE) # amostra sem reposicao com n=10
amostra

