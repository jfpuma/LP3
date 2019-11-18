SubProceso cargarDatos(mensaje, datos por referencia, n)
	para i=1 hasta n
		Mostrar mensaje " " i 
		leer datos[i]
	FinPara
finsubproceso 

Funcion verArreglos = Func_verArreglos (arreglos,arreglos2, verificacion, n)
	verArreglos=0
	
	para i=1 hasta n
		si arreglos[i] >= verificacion entonces
			verArreglos=verArreglos+1
			
		FinSi
	FinPara
FinFuncion

Algoritmo sin_titulo
	definir n, i, notaPerfecta, aprobaron Como Entero
	n=15
	definir mensaje1, mensaje2 Como Caracter
	Dimension nombres[n]
	Dimension notas[n]
	notaPerfecta=100
	aprobaron=50
	
	mensaje1= "Ingrese el nombre del alumno"
	mensaje2= "Ingrese la nota del alumno"
	
	Mostrar "Ingrese la cantidad de alumnos de la seccion "
	leer n
	
	cargarDatos(mensaje1, nombres, n)
	cargarDatos(mensaje2, notas, n)
	ver_notasPerfectas=Func_verArreglos(notas, notaPerfecta, n)
	verAprobaron=Func_verArreglos(notas, aprobaron, n)
	
	Mostrar ver_notasPerfectas " alumnos tuvieron calificacion perfecta"
	Mostrar verAprobaron " alumnos aprobaron la materia"
FinAlgoritmo
