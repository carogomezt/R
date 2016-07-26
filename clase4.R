#Estructuras de control: If-else, for, while, Repeat-Break
x<-0.6
if(x > 0.5){
  x<-1
}else{
  x<-0
}
x
#Ejercicio que reconozca si es mayor de edad
y<-20
if(y >= 18){
  b <- "Mayor de edad"
  b
  
}else{
  a <- "Menor de edad"
  a
}
#Ejercicio de notas
nota<-4.0
aux<-"NA"
if(nota >= 0 & nota < 2){
  aux<-"Insuficiente"
}else{
  if(nota >= 2 & nota < 3){
    aux<-"Deficiente"
  }else{
    if(nota >= 3 & nota < 4){
      aux<-"Aceptable"
    }else{
      if(nota >= 4 & nota < 4.5){
        aux<-"Sobresaliente"
      }else{
        if(nota >= 4.5 & nota < 5){
          aux<-"Excelente"
        }
      }
    }
  }
}
aux
#For
for(i in 1:10){
  print(i)        #Imprime del 1 al 10 
}
vec<-c('a', 'b', 'c')
for(i in vec){
  print(i)
}
#Sumar numeros del 1:10
sum<-0
for(i in 1:10){
  sum <- sum + i
  print(sum)
}
sum
#While
x<-0
while(x<=10){
  x<- x+1
  print(x)      #Imprime del 1:10
}
#Suma de los numeros
sum<-0
x<- 1
while(x<=10){
  sum <- sum + x
  x <- x + 1
  print(sum)      
}
#acceder al vector hasta la posicion 7
vector<-c(1:10)
cont<-1
while(vector[cont]<=7){
  print(vector[cont])
  cont = cont+1
}
#encontrar los valores 2, 3 de forma consecutiva en el vector y salirse
c(1,2,1,2,1,3,2,2,3,2,1,2)
#proyecto hasta el final: construir un algoritmo que sea capaz de resolver sopas de letras