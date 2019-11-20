Algoritmo sin_titulo
	definir cant_cod , cod_venta, cant_venta, codigo Como Entero
	definir diferente como logico
	
	Mostrar "Ingrese la cantidad de codigos a guardar"
	leer cant_cod
	
	Dimension cods_part[cant_cod]
	Dimension cods_part_vend[cant_cod]
	diferente=Falso	
	
	para i=1 hasta cant_cod
		Repetir
			Mostrar "Ingrese el " i "° codigo"
			leer codigo
			para j=1 hasta cant_cod
				si codigo=cods_part[j]
					Mostrar "El codigo ya existe"
					Mostrar "Ingrese el " i "° codigo"
				SiNo
					cods_part[j]=codigo
					diferente=Verdadero
				FinSi
			FinPara
		Hasta Que diferente=Verdadero
	FinPara
	
	
FinAlgoritmo
