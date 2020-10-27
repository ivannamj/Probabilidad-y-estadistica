install.packages("datos")
library(datos)

#Vamos a trabajar con la matriz de datos millas
millas<-datos::millas

#Vamos a explorar la matriz de datos con los siguientes comandos
?millas
dim(millas)
names(millas)
str(millas)
anyNA(millas)
typeof(millas)
View(millas)

#Convertiremos la matriz de datos a "data frame"
millas_1<-as.data.frame(millas)

#Iniciaremos los estadísticos descriptivos
summary(millas_1)

#Calcularemos la moda, instalando el paquete modeest
install.packages("modeest")
library(modeest)

#La función que utilizaremos para identificar la moda es mvf()
mfv(millas_1$fabricante)
mfv(millas_1$modelo)
mfv(millas_1$cilindrada)
mfv(millas_1$anio)
mfv(millas_1$cilindros)
mfv(millas_1$transmision)
mfv(millas_1$traccion)
mfv(millas_1$ciudad)
mfv(millas_1$autopista)
mfv(millas_1$combustible)
mfv(millas_1$clase)

#calculamos la varianza de cada una de las variables
#cuantitativas
var(millas_1$cilindrada)
var(millas_1$anio)
var(millas_1$cilindros)
var(millas_1$ciudad)
var(millas_1$autopista)

#calcularemos la desviacion standar para cada una de las
#variables cuantitativas
sd(millas_1$cilindrada)
sd(millas_1$anio)
sd(millas_1$cilindros)
sd(millas_1$ciudad)
sd(millas_1$autopista)

#coeficiente de variacion
#vamos a instalar el paquete FinCal y abrimos la librería
install.packages("FinCal")
library(FinCal)

#calculamos el coeficiente de variación
coefficient.variation(sd=sd(millas_1$cilindrada),
                      avg=mean(millas_1$cilindrada))
coefficient.variation(sd=sd(millas_1$anio),
                      avg=mean(millas_1$anio))
coefficient.variation(sd=sd(millas_1$cilindros),
                      avg=mean(millas_1$cilindros))
coefficient.variation(sd=sd(millas_1$ciudad),
                      avg=mean(millas_1$ciudad))
coefficient.variation(sd=sd(millas_1$autopista),
                      avg=mean(millas_1$autopista))

#---Empezaremos a contruir algunos graficos---

#Instalaremos el paquete tidyverse y abriremos la libreria
install.packages("tidyverse")
install.packages("RColorBrewer")

#Abrimos las librerias
library(tidyverse)
library(RColorBrewer)

#Gráfico de dispersión

#Construcción de la tabla con la que vamos a trabajar
dispersion_1<-ggplot(millas_1, aes(x=cilindrada, y=autopista, color=clase))+geom_point()

#visualizamos el gráfico
dispersion_1


#Gráfico boxplot

#Construcción de la tabla con la que vamos a trabajar
boxplot_1<-ggplot(millas_1,aes(factor(transmision), 
                             ciudad, fill=transmision))+
  geom_boxplot()+
  ggtitle("Transmisión de autos en ciudad")+
  xlab("Transmisión")+
  ylab("Ciudad")

#visualizamos el gráfico
boxplot_1


#Gráfico de barras

#Construcción de la tabla con la que vamos a trabajar
attach(millas_1)
barras_1<-table(millas_1$cilindros)

#visualizamos el gráfico
barras_1

#Especificamos la paleta de colores que vamos a utilizar
color=c("chartreuse2","thistle4","brown1","darkslategray4")

#construimos el gráfico de la variable x
barplot(barras_1,xlab="cilindros", ylab="Frecuencias", 
        main="Gráfico de barras de cilindros", col=color)
