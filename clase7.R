motor<-read.csv("Datosmotor.csv",header=T)
str(motor)
#grafica de los puntos
plot(data=motor,Resistencia~Tiempo_pieza)
#Calcula la regresion lineal
lmmotor<-lm(data=motor,Resistencia~Tiempo_pieza)
lmmotor
#Funcion para evaluar los puntos
resistencia <- function(x){
  y <- 2627.82 - (37.15*x)
  return(y)
}
resistencia(2)
#Grafica con la regresion lineal
plot(data=motor,Resistencia~Tiempo_pieza)
abline(lmmotor)
#Supuestos
par(mfrow=c(2,2))
plot(lmmotor)
#Prueba de significancia
summary(lmmotor)
#Predicciones del modelo
datosprueba<-data.frame(Tiempo_pieza=c(10))
predict(lmmotor,datosprueba)
#Predicciones del modelo: Sacando los coheficientes
lmmotor$coefficients%*%c(1,10)

B0<-lmmotor$coefficients[1]
B1<-lmmotor$coefficients[2]
B0+B1*10
#funcion propia para prediccion del modelo
evalmod <- function(modelo, val){
  result <-predict(modelo,val)
  return(result)
}
evalmod(lmmotor, datosprueba)


#Nuevo modelo con dos regresores
datostiempos<-read.csv("datostiempos.csv")
str(datostiempos)
#grafica de los puntos
datostiempos2 <- datostiempos[, 2:4]
plot(datostiempos2)
#regresion lineal
lmdatatiempo<-lm(data=datostiempos,Tiempo_Entrega~Cantidad+Distancia)
summary(lmdatatiempo)

carros<-read.csv("carros_motor.csv")
str(carros)
carros2 <- carros[, 2:8]
plot(carros2)
#regresion lineal
lmcarros<-lm(data=carros,mpg~hp+wt)
summary(lmcarros)

#wt+hp


