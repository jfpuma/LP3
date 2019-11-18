SubProceso cargarDatos(mensaje, datos Por Referencia, n)
	para i=1 hasta n
	Mostrar mensaje " " i
	leer datos[i]
	fin para	
finsubproceso 



Algoritmo sin_titulo
	definir n Como Entero
	n=1
	Dimension notas[n]
	Dimension nombres[n]
	definir nota_mayor, nota_menor como entero
	definir nombre_mayor, nombre_menor, mensaje1, mensaje2 como caracter
	nota_mayor=0
	nota_menor=101
	
	Mostrar "ingrese la cantidad de alumnos de la seccion"
	leer n	
	
	mensaje1="Ingrese el nombre del estudiante"
	mensaje2="Ingrese la nota del estudiante"
	
	cargarDatos(mensaje1, nombres, n)
	cargarDatos(mensaje2, notas, n)
	
	para i=1 hasta n
		si notas[i]>nota_mayor
			entonces
			nota_mayor=notas[i]
			nombre_mayor=nombres[i]
		FinSi
	FinPara
	
FinAlgoritmo
