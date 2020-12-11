
#Análisis de datos en scala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data
data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos
#para su mejor uso
pisa<-pisaitems

#Exploramos la matriz de datos
names(pisa)
typeof(pisa)
str(pisa)


#visualizamos los valores que componen una variable
head(pisa$CNT)
head(pisa$ST24Q01)

#buscamos los valores perdidos
anyNA(pisa)
#numero total de datos perdidos en la matriz de datos
sum(is.na(pisa)) 
#eliminacion de filas con datos perdidos
#y creamos una nueva matriz
pisa2<-na.omit(pisa)
#verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#Empezamos a trabajar con nuestra nueva matriz de datos


#--------VARIABLE 27--------
#Agrupamiento de items
names(pisa2)
variable27<-pisa2[,25:37] 
names(variable27)
head(variable27[8:13,8:13])

#Renombramos las etiquetas de respuesta
levels(variable27)<-c("Casi siempre",
                   "A menudo",
                   "A veces",
                   "Casi nunca")

#colocar los nombres a los indicadores

names(variable27)<-c("Cuando yo estudio, trato de memorizar todo de lo que habla el texto",
                  "Cuando yo estudio, empiezo por averiguar lo que necesito aprender exactamente",
                  "Cuando yo estudio, trato de memorizar tantos detalles como sean posibles",
                  "Cuando yo estudio, trato de relacionar la nueva información a los conocimientos adquiridos previamente",
                  "Cuando yo estudio, leo el texto tantas veces, hasta poder recitarlo",
                  "Cuando yo estudio, verifico si entendí lo que leí",
                  "Cuando yo estudio, leo el texto una y otra vez",
                  "Cuando yo estudio, me doy cuenta de lo útil que es la información fuera de la escuela",
                  "Cuando yo estudio, trato de averiguar los conceptos que aún no he entendido",
                  "Cuando yo estudio, trato de entender mejor el material relacionándolo con mis propias experiencias",
                  "Cuando yo estudio, me aseguro de recordar lo más importante del texto",
                  "Cuando yo estudio, averiguo como la información del texto se relaciona con lo que sucede en la vida real",
                  "Cuando estudio y no entiendo algo, busco más información para clarificar esta")


l27<-likert(variable27)

#Generamos el grafico de barras
plot(l27,type="bar",centered=FALSE)
