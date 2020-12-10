#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.



#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

sample(1:83,39, replace = FALSE)

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

muestra<-c(80, 1, 6, 24, 28, 47, 37, 76, 54, 81, 63, 50, 51, 66, 31, 45,
           33, 69, 67, 83, 10, 38, 20, 12, 41, 21, 34, 64, 17, 16, 42, 35,
           25, 74, 22, 75, 44, 27, 71)

View(muestra)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

sample(1:90,42, replace = FALSE)

muestraivanna<-c(38, 83, 49, 78, 11, 20, 65,  6, 70, 69, 73, 48,  2, 50, 85, 58,
        51, 62, 88, 54, 23, 18, 84, 47,  1, 66, 80, 76, 35, 25, 30, 64,
        40, 24, 81, 22, 68, 75, 44, 15, 14, 36)

View(muestraivanna)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.

sample(1:78,36, replace = FALSE)

muestraprimaria<-c(67,  2, 53, 73, 71, 14,  8, 37, 15, 28, 70,  3, 12, 39, 27, 20,
                   61, 38, 72, 78, 64, 41, 69, 17, 33, 54, 45, 76, 59, 23, 25,  5,
                   40, 50, 44, 77)

View(muestraprimaria)

#Preescolar: 84 personas egresadas.

sample(1:84,38, replace = FALSE)

muestrapreescolar<-c(13, 81, 26,  5, 50, 38, 52, 44, 45,  9, 22, 23, 30, 36,  6, 72,
                     74, 15, 55, 54, 25, 78, 14, 49, 39, 20, 41, 16, 67, 17, 66, 31,
                     1, 21, 10,  4, 51, 70)

View(muestrapreescolar)

#Física: 35 personas egresadas.

sample(1:35,18, replace = FALSE)

muestrafisica<-c(9, 17, 23, 26, 33, 31, 19, 14, 25, 18,  8, 34, 16,  7, 32, 15,
                 2, 11)

View(muestrafisica)

#Telesecundaria: 83 personas egresadas.

sample(1:83,37, replace = FALSE)

muestratelesecundaria<-c(22, 26, 36, 38, 53, 10, 49, 57, 76,  9, 17,  5, 27, 47, 28, 62,
                         56, 80, 33, 43, 77, 34,  4, 59, 32, 39, 21, 75, 67, 42, 65, 82,
                         50, 46, 69, 20, 55)

View(muestratelesecundaria)

#Especial: 25 personas.

sample(1:25,13, replace = FALSE)

muestraespecial<-c(5, 17, 24,  2, 12, 15, 21, 23, 18,  9,  7, 10, 19)

View(muestraespecial)
