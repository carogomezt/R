a <- 10 #variable
b = 2.5
c = "Hola Mundo"
f = T
d = c(1, 2 , 5)

#Practica 
nombres <- c("Alejandro", "Carolina", "Lorena")
hermanos <- c(3, 1, 1)
trabajo <- c(TRUE, TRUE, TRUE)
genero <- c(2, 1, 1)
vector1 <- c(11, 12, 13, 14, 15, 16)
vector1[1] #acceso a una posicion de un vector
vector1[1] <- 21 #Asignar valor 
vector1[c(2,4)] #Valores en posicion asignada
vector1[c(2,4)] <- c(31, 32) #modificando varios valores del vector al tiempo
vector2 <- vector1[c(2,4)]

#Indexacion Vectores
#c(T, T, T, F, F)
vector1[c(F,T,F,T,F)]
vector1>3 #Muestra un vector logico con los valores que cumplen la condicion
vector1[vector1>16] #Muestra un vector con los valores que cumplen la condicion
vector1[vector1==13] #Valores iguales a un numero
nombres[nombres=="Carolina"]
hermanos[hermanos==1]
trabajo[trabajo==TRUE]
nombres[genero==1]
nombres[trabajo==TRUE]

#Creacion de matriz
a <- matrix(c(1,2,3,4),2,2)
matrix(c(0), 2, 2) #matriz de ceros
matrix(c(1:4), 2, 2) #matriz de numeros
matrix('a', 2, 2) #Matriz de caracteres

#Acceso a matrices
a[1,2] #Indexacion celda
a[,1]  #indexacion columna
a[1,]  #indexacion fila
a[1,1] <- 5 #Asignar un valor 

#Matrix: Todos los datos deben ser del mismo tipo de datos
#Data Frame: Las columnas deben ser del mismo dato
#DATA FRAME
dato1 <- data.frame(Edad=c(1,2,3), Nombre=c("Hector","Viviana","Camila"))
dato1
vecinos <-data.frame(nombres=nombres,hermanos=hermanos,trabajo=trabajo,genero=genero)
vecinos[2,1] #Indexar un valor de celda
vecinos[1,]  #Indexar un valor de fila
vec<-vecinos[,2]  #Indexar un valor de columna
vec[1]
vecinos$nombres   #Manejo de data frame a traves de nombre
vecinos[2,]
#Tarea: buscar por columna el valor de nuestros datos sin buscar por registros si no por pruebas logicas.
vecinos[nombres == "Carolina",]



