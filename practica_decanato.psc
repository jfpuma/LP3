SubProceso cargarDatos(mensaje, dato por referencia)
	Mostrar mensaje
	leer dato
finsubproceso 

subproceso calcularInicial (costo, inicial por referencia)
	inicial=costo*0.2
	Mostrar "El monto incial a pagar es: " inicial "Bs"
	Mostrar "Para ir al menu presione una tecla"
	esperar tecla
FinSubProceso

Subproceso calcularCuotas (inicial, costo, cuotas por referencia)
	cuotas=(costo-incial)/24
	Mostrar "Las cuotas mensuales a pagar sera de: " cuotas "Bs"
	Mostrar "Para ir al menu presione una tecla"
	esperar tecla
FinSubProceso

SubAlgoritmo mostrarTodo (inicial, costo, cuotas, nombre)
	Mostrar "El nombre del estudiante es: " nombre
	Mostrar "El area del curso es: " area
	Mostrar "El costo del curso es de: " costo "Bs"
	calcularInicial(costo,inicial)
	calcularCuotas(inicial,costo,cuotas)
	Mostrar "Para ir al menu presione una tecla"
	esperar tecla
FinSubAlgoritmo

Algoritmo Practica
	Definir mensaje1, mensaje2, mensaje3, nombre, area como caracter
	Definir costo como real
	Definir opc Como Entero
	
	repetir
		Mostrar "Menu"
		Mostrar "Seleccione una de las opciones listadas: "
		Mostrar "1- Cargar Datos"
		Mostrar "2- Mostrar Inicial del Curso"
		Mostrar "3- Mostrar Cuotas a pagar mensualmente"
		Mostrar "4- Mostrar Todo"
		Mostrar "5- Salir"
		leer opc
		segun opc
			1:mensaje1="Ingresa nombre del estudiante"
				mensaje2="Ingresa el area del curso"
				mensaje3="Ingresa el costo del curso"
				cargarDatos(mensaje1, nombre)
				cargarDatos(mensaje2,area)
				cargarDatos(mensaje3,costo)
			2: calcularInicial(costo,inicial)
				Limpiar Pantalla
			3: calcularCuotas(inicial,costo,cuotas)
				Limpiar Pantalla
			4: mostrarTodo(inicial, costo, cuotas, nombre)
				Limpiar Pantalla
			5: Mostrar "Ha seleccionado salir, hasta pronto!!"
			De Otro Modo:
				Mostrar "Ingrese una opcion correcta"
		FinSegun
	Hasta Que opc=5
	
FinAlgoritmo
