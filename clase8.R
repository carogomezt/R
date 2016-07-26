#Instalacion de la libreria ggplot2 para graficos
#install.packages("ggplot2")
#Importar la libreria
library(ggplot2)
mtcar
#grafica con puntos de diferentes tamaños de acuerdo a la intensidad
ggplot(data = mtcars, aes(x = wt,y = qsec)) + geom_point(color="violet",aes(size=mpg))
Myplot <- ggplot(data = mtcars)
Myplot + geom_point(aes(x = wt,y = qsec))
#grafica con puntos de diferentes tonalidades de acuerdo a la intensidad
Migrafico <- ggplot() + geom_point(data=mtcars, aes(x = wt,y = qsec, color=cyl))
#grafica con puntos de diferentes colores de acuerdo a la intensidad
Migrafico <- ggplot() + geom_point(data=mtcars, aes(x = wt,y = qsec, color=as.factor(cyl), size=mpg))
#grafica con puntos de diferentes colores de acuerdo a la intensidad y las une con lineas
Migrafico <- ggplot(data=mtcars, aes(x = wt,y = qsec)) + geom_point(aes(color=as.factor(cyl)))+geom_line()
#Titulo y demas cosas
Migrafico <- ggplot(data=mtcars, aes(x = wt,y = qsec, color=as.factor(cyl))) + geom_point()+geom_line()+ ggtitle("Motor Trend Car Road Test") + ylab("Variable qseq")+xlab("Variable wt")+ theme(legend.title=element_blank())
Migrafico
#agrupar o desagrupar datos
p <- ggplot(mtcars, aes(wt,qsec)) + geom_point()
#desagrupado en x
p + facet_grid(. ~ cyl)
#desagrupado en y
p + facet_grid(cyl ~ .)
#geom dividido en varios segmentos
p + facet_grid(cyl ~.~ gear) + geom_density_2d()
#geom histograma
ggplot(data = mtcars, aes(x=disp)) + ggtitle("Histograma de Disp") + geom_histogram(binwidth = 40, color="blue", fill="darkgreen")
#caja de bigotes
ggplot(data=mtcars) + geom_boxplot(aes(x=factor(cyl), y=mpg), fill="pink")
#Descripcion de los datos
str(mtcars)
