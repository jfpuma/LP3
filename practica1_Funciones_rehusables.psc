SubProceso cargarDatos(mensaje, dato por referencia)
	Mostrar mensaje
	leer dato
finsubproceso

Funcion porcTotal = Func_Calc_Porc(precio, porc)
	porcTotal=precio*porc/100
FinFuncion

Algoritmo sin_titulo
	definir mensaje1 Como Caracter
	definir precioFabrica,ganancia,iva,comVendedor,precioBase Como Real
	porcGanancia=25
	porcVendedor=20
	porcIva=15
	
	cargarDatos(mensaje1, precioFabrica)
	ganancia=Func_Calc_Porc(precioFabrica, porcGanancia)
	
FinAlgoritmo
