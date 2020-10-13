#1.- Leer la matriz de datos
cars<-data(mtcars)

#1.2.- Exploracion de la matriz de datos
#nombres de las variables
names(mtcars)

#dimension de la matriz (cuantas observaciones y 
#variables contiene)
dim(mtcars)

#tipo de variable
#caracter (chr)-> letras
#numerico (num)-> continua
#integer (int) -> entero / discreta
#logical (log) -> False, True
#complex (com) -> número complejo ejemplo:3i
str(mtcars)

#detecta si hay valores perdidos
anyNA(mtcars)

#Visualizamos la variable wt de la matriz mtcars
mtcars$wt

#2.- Revisamos el tipo de matriz de datos
#Vector -> función c()
#Lista
#Matriz
#Factor
#Data frame (tabla que contiene datos de tipo numéricos,
#factor y caracter)
typeof(mtcars)

#3.- Convertimos la matriz de datos a un data frame y despues
#Agrupamos los valores para la variable wt
# y se calcula la frecuencia absoluta.
tabla_PL<-as.data.frame(table(PL = mtcars$wt))

#4.- Mostramos la tabla de contingencia para la variable PL
#con su respectiva frecuencia absoluta.
tabla_PL

#5.- Se contruye la tabla de frecuencias completas redondeando
#las frecuencias absolutas a 3 decimales
transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#6.- agruparemos las variables en 10 clases y se 
#calcula la frecuencia absoluta
tabla_clases<-as.data.frame(table
                            (wt = factor
                              (cut(mtcars$wt,
                                   breaks = 9))))

#7.- visualizamos la tabla de clases
tabla_clases

#8.- Contrucción de la tabla de frecuencias completa redondeando las frecuencias 
#relativas a 3 decimales
transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

