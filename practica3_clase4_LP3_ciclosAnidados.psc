Algoritmo sin_titulo
	definir nro_alum, j, i, nota Como Entero
	definir cont_alum_aprob, acum_notas, cont_genero, acum_notas_alum, cont_muj_aprob Como Entero
	definir sexo Como Caracter
	definir promedio_seccion, porc_aprobados Como Real
	
	cont_alum_aprob=0
	Mostrar "Ingrese el nro de estudiantes a procesar"
	leer nro_alum
	Dimension promedio[nro_alum]
	
	Para i =1 hasta nro_alum
		Mostrar "Ingrese su genero M masculino y F femenino"
		leer sexo
		sexo=Mayusculas(sexo)
		para j=1 hasta 5
			Mostrar "Ingrese la nota " j " del alumno " i
			leer nota
			acum_notas_alum=acum_notas_alum+nota
			
		FinPara
		
		acum_notas=acum_notas_alum+acum_notas
		promedio[i]=acum_notas_alum/5
		
		Si promedio[i]>=50
			entonces 
			cont_alum_aprob=cont_alum_aprob+1
			si sexo = "F"
				cont_muj_aprob=conta_muj_aprob+1
			FinSi
		FinSi
	FinPara
	
	promedio_seccion=acum_notas/nro_alum
	porc_aprobados=(cont_alum_aprob/nro_alum)*100
	
	Mostrar "El promedio de la seccion es de " promedio_seccion
	Mostrar " El porcentaje de alumos aprobados es de " porc_aprobados "%"
	Mostrar "La cantidad de mujers aprobadas es de " cont_muj_aprob
	para i=1 hasta nro_alum
		Mostrar "El promedio del alumno " i " es de " promedio[i]
	FinPara
FinAlgoritmo
