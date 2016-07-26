#Funciones
#myfunction <- function(arg1, arg2, ...) { code return(an_object)}

cuadrado <- function(vect){
  for (i in vect) {
    vect[i] = vect[i]*vect[i]
  }
  return(vect)
}
t<- c(1,2,3)
cuadrado(t)
#source("clase6.R")     mirar una funcion dentro de un directorio
#elevar un numero a una potencia n

potencia <- function(mivect, n){
  resultado <- mivect^n
  return(resultado)  
}
potencia(t, 3)
#potencia(mivec=t, n=3)   ----> llamar a una funcion con el nombre de las variables

#invertir matriz
inv_matriz <- function(matz){
  r <- nrow(matz)
  c <- ncol(matz)
  if(r != c){
    print("Error: La matriz no es cuadrada")
  }else{
    result <- matrix(c(0), r, r)
    for (i in 1:dim(matz)[1]) {
      for (j in 1:dim(matz)[2]) {
        result[j,i] = matz[i,j]
      }
    }
    return(result)
  }
}
m <- matrix(c(1:9), 4, 3)
m
inv_matriz(m)

#suma de cada fila de un objeto tipo data.frame
sumfila <- function(dframe, num){
  if(num ==1){
    print("Se sumara por filas")
    filas <- dim(dframe)[1]
    columnas <- dim(dframe)[2]
    vect <- rep(0, filas)
  }else {
    print("Se sumara por columnas")
    filas <- dim(dframe)[2]
    columnas <- dim(dframe)[1]
    vect <- rep(0, filas)
  }
  for (i in 1:filas) {
    cont <- 0
    for (j in 1:columnas) {
      if(num == 1)
        cont <- cont + dframe[i,j]
      else{
        cont <- cont + dframe[j,i]
      }
    }
    vect[i] <- cont
  }
  return(vect)
}

t<-data.frame(a=c(1,2,3),b=c(1,2,3),c=c(1,2,3))
t
sumfila(t,1)
sumfila(t,2)
