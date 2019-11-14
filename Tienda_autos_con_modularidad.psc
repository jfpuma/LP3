SubProceso capturarNombre(nombre_empleado por referencia)
	Mostrar "Ingrese el nombre del vendedor: "
	leer nombre_empleado
	
FinSubProceso 

SubProceso capturarCantidad (cantidad_autos Por Referencia, nombre_empleado)
	
	Mostrar "Ingrese la cantidad de autos vendidos por el vendedor " nombre_empleado
	Leer cantidad_autos
	
FinSubProceso

SubProceso capturarMontoVentas (monto_ventas Por Referencia)
	Mostrar "Ingrese el monto de las ventas del empleado " nombre_empleado
	leer monto_ventas
FinSubProceso

SubProceso comisionCantidadVentas (comision_por_cant Por Referencia, cantidad_autos, comision_cant)
	comision_por_cant=cantidad_autos*comision_cant
	
FinSubProceso

SubProceso comisionVentas (comision_venta Por Referencia, monto_ventas)
	comision_venta=monto_ventas*0.18
FinSubProceso

Subproceso calcularSalario (salario_total por referencia, comision_venta, comision_por_cant, sueldo_base)
	salario_total=sueldo_base+comision_por_cant+comision_venta
FinSubProceso

SubProceso salidas (salario_total, nombre_empleado, comision_venta, comision_por_cant, sueldo_base)
	comisionCantidadVentas(comision_por_cant, cantidad_autos, comision_cant)
	comisionVentas(comision_venta, monto_ventas)
	calcularSalario(salario_total, comision_venta, comision_por_cant, sueldo_base)
	
	Mostrar "El empleado " nombre_empleado " se le tiene que pagar: "
	Mostrar ""
	Mostrar "Sueldo base: " sueldo_base
	Mostrar ""
	Mostrar "Monto de comision por el monto de ventas: " comision_venta
	Mostrar ""
	Mostrar "Monto de comision por la cantidad de ventas: " comision_por_cant
	Mostrar "" 
	Mostrar "En total el salario total a pagar seria: " salario_total
	
FinSubProceso

Proceso Tienda_autos_con_modularidad
	 definir nombre_empleado Como Caracter
	 definir cantidad_autos como entero
	 definir monto_ventas, sueldo_base, comision_cant, salario_total, comision_venta, comision_por_cant como real
	 
	 
	 sueldo_base=120000
	 comision_cant=300000
	 
	 capturarNombre(nombre_empleado)
	 capturarCantidad(cantidad_autos, nombre_empleado)
	 capturarMontoVentas(monto_ventas)
	 comisionCantidadVentas(comision_por_cant, cantidad_autos, comision_cant)
	 comisionVentas(comision_venta, monto_ventas)
	 calcularSalario(salario_total, comision_venta, comision_por_cant, sueldo_base)
	 salidas(salario_total, nombre_empleado, comision_venta, comision_por_cant, sueldo_base)
FinProceso
