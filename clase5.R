#Calculo de PI con serie de leving
#PI = 4*(1-(1/3)+(1/5)-(1/7)...)
cont <- 0
for (i in 0:1000) {
  if(i%%2 != 0){
    cont <- cont + (1/(2*i+1)) * (-1)
  }else{
    cont <- cont + (1/(2*i+1))
  }
}
result <- 4*(cont)
result

#otra manera
cont <- 0
for (i in 0:1000) {
  cont <- cont + (-1)^i * (1/(2*i+1))
  
}

#Calculo de PI mediante simulacion
circun <- 0
n <- 1000000
radio <- 1.0
datos <- matrix(ncol=3, nrow=n)
for (i in 1:n) {
  x <- runif(1,-1,1)
  y <- runif(1,-1,1)
  datos[i,1] <- x 
  datos[i,2] <- y
  datos[i,3] <- 0       #0 si no esta dentro de la circunferencia
  dist <- sqrt((0-x)^2+(0-y)^2)
  if(dist >= -radio && dist <= radio){
    circun <- circun + 1
    datos[i,3] <- 1     #1 si esta dentro dela circunferencia
  }
}
result <- (4*circun)/n
result
si <- datos[datos[,3]==1,]
no <- datos[datos[,3]==0,]
plot(si[,1], si[,2], col="pink", pch=".", xlim=c(-1,1),ylim=c(-1,1))        #mostrar los datos de X y Y
par(new=TRUE)
plot(no[,1], no[,2], pch=".", xlim=c(-1,1),ylim=c(-1,1))        #mostrar los datos de X y Y

#Ejemplo de la moneda: contar cuantas caras salieron
caras<-matrix(nrow=996, ncol=2)
for(i in 5:1000){
  caras[i-4,1] <- sum(round(runif(i,0,1)))
  caras[i-4,2] <- caras[i-4,1]/i
}
plot(caras[,1], caras[,2], type="l")
