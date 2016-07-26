Mydata <- mtcars              #Objeto que existe por defecto
head(Mydata)                  #Primeros 6 datos
tail(Mydata)                  #Ultimos 6 datos
Mydata[c(1:6),]               #acceder a los 6 primeros datos con indexacion
D <- dim(Mydata)              #mirar el tamaño de My data
D[1]
Mydata[(D[1]-6):D[1],]
nombres <- names(Mydata)      #Nombres de las variables del dataframe
typeof(Mydata)                #Tipo de dato
nombres[7] <- "UTP"
names(Mydata)[1:4] <- c("a","b","c","d")
names(Mydata)[nombres=="carb"] <- "alejo"
names(Mydata)
nrow(Mydata)
ncol(Mydata)
length(Mydata)
a <- c(1,2,3,4,5)
length(a)
Mydata <- mtcars
colnames(Mydata)
row <- rownames(Mydata)
Mydata[,dim(Mydata)[2]+1] <- row
names(Mydata)[12] <- "Nombres"
head(Mydata$Nombres)
rownames(Mydata) <- NULL       #Eliminar metadatos
#Ejercicio: crear un objeto con las variables cyl, hp, wt, carb
obj <- data.frame(cyl = (Mydata$cyl), hp = (Mydata$hp), wt = (Mydata$wt), carb = (Mydata$carb)) 
#Ejercicio: crear un objeto con las 16 observaciones de la mitar y las primeras tres variables pares
medio <- dim(Mydata)[1]/2
lminf <- medio - 7
lmsup <- lminf + 15
obj2 <- Mydata[(lminf:lmsup),]
obj2
#Ejercicio:Promedio de millas por galon (mpg) para los vehiculos con mas de 100 caballos de
#fuerza(hp) y cuatro carburadores(carb)?
#----Primera forma----
#Mydata <- mtcars
#mydata2 <- Mydata[Mydata$hp > 100,]
#mydata3 <- mydata2[mydata2$carb == 4,]
#mean(mydata3$mpg)
#----Segunda forma----
obj3 <- Mydata[(Mydata$hp > 100) & (Mydata$carb == 4),]
mean(obj3$mpg)
#Funciones utiles: class(), str(), summary(), subset(), table()
class(obj3)      #tipo de objeto
str(obj3)        #muestra la informacion del objeto
summary(obj3)    #Saca informacion estadistica del objeto
subset(obj3)
#table(obj3)
#regresion lineal de variables
Mydata <-mtcars
lm(mpg~wt,data=mtcars)
MiPrimerModelo <- lm(mpg~wt, mtcars)
class(MiPrimerModelo)
MiSegundoModelo <- lm(mpg~wt+hp, mtcars)
MiSegundoModelo
summary(MiSegundoModelo)
#correlacion de las variables
cor(mtcars)
#variables categoricas: por ejemplo hombre o mujer, son de tipo nominal o cadinal, su diferencia es la relacion de distancia.
#Siempre se representan por un digito
Gender <- c(0, 1, 1, 1, 0, 1, 0)
Gender <- factor(Gender)  #Volverla categorica
summary(Gender)
levels(Gender)            #Niveles
levels(Gender) <- c("Male", "Female")
levels(Gender)
summary(Gender)
Gender1 <- c("M", "F", "F", "F", "M", "F", "M")
Gender1 <- factor(Gender1)
summary(Gender1)
levels(Gender1)
#Valores nulos
Data <- airquality
mean(airquality$Ozone)
summary(Data)
#Eliminar valores nulos
is.na(Data)
na.omit(Data)     #borra donde hayan valores nulos
complete.cases(Data)
