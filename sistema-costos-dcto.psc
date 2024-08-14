Algoritmo Sistema_De_Costos_Y_Descuentos
	Definir Producto1Precio, Producto2Precio, Producto3Precio, Producto4Precio, IVA, CuponDescuento, DescuentoPorCantidad, CostoDelEnvio, Destino1Precio, Destino2Precio, CostoPorPeso, SumatoriaDeProductos, CostoPorKiloProducto1, CostoPorKiloProducto2, CostoPorKiloProducto3, CostoPorKiloProducto4, CostoPorPesoTotal, SumatoriaDestino, DestinoTotal, total como real
	Definir CantidadDeProductosQueAplicaDescuento, CerrarCicloAux, ContadorProductos, KilosAEscoger como entero
	Definir Producto1, Producto2, Producto3, Producto4, Destino1, Destino2, Producto, Destino, CuponCodigo, CuponCodigoInput Como Caracter
	Definir CerrarCiclo, AplicaDescuentoPorCupon, DescuentoPorCantidadDeProductos Como Logico
	
	AplicaDescuentoPorCupon = falso
	DescuentoPorCantidadDeProductos = falso
	CerrarCiclo = falso
	Producto1 = "sombrero marron"
	Producto2 = "sombrero azul"
	Producto3 = "sombrero amarillo"
	Producto4 = "sombrero negro"
	
	Producto1Precio = 10.55 // dolares precio por kilo
	Producto2Precio = 5.25 // dolares precio por kilo
	Producto3Precio = 12.22 // dolares precio por kilo
	Producto4Precio = 3.14 // dolares precio por kilo
	SumatoriaDeProductos = 0
	SumatoriaDeKilos = 0
	Destino1Precio = 1 // dolares
	Destino2Precio = 2 // dolares
	Destino1 = "Santiago de Chile"
	Destino2 = "Caracas"
	
	CuponCodigo = "1234"
	
	CostoPorPeso = 0.25 // dólares por cada kilo
	
	IVA = 19 // porcentaje
	CuponDescuento = 10 // porcentaje
	DescuentoPorCantidad = 10 // porcentaje
	CantidadDeProductoQueAplicaDescuento = 4
	
	ContadorProductos = 0
	
	CostoPorPesoTotal = 0
	
	Mientras !CerrarCiclo Hacer
		KilosAEscoger = 0
		
		Escribir "Escoja el producto"
		Leer Producto
		
		Escribir "Ingrese el peso del producto escogido en gramos"
		Leer KilosAEscoger
		
		SumatoriaDeKilos = SumatoriaDeKilos + KilosAEscoger
		
		si (Producto == "sombrero marron") Entonces
			ContadorDeProductos = ContadorProductos + 1
			SumatoriaDeProductos = SumatoriaDeProductos + (Producto1Precio*(KilosAEscoger/1000))
		fin si
		
		si (Producto == "sombrero azul") Entonces
			ContadorDeProductos = ContadorProductos + 1
			SumatoriaDeProductos = SumatoriaDeProductos + (Producto2Precio*(KilosAEscoger/1000))
		fin si
		
		si (Producto == "sombrero amarillo") Entonces
			ContadorDeProductos = ContadorProductos + 1
			SumatoriaDeProductos = SumatoriaDeProductos + (Producto3Precio*(KilosAEscoger/1000))
		fin si
		
		si (Producto == "sombrero negro") Entonces
			ContadorDeProductos = ContadorProductos + 1
			SumatoriaDeProductos = SumatoriaDeProductos + (Producto4Precio*(KilosAEscoger/1000))
		fin si
		
		Escribir "Contador de productos", ContadorDeProductos
		
		Escribir "¿Desea escoger otro producto? (Si es igual a 0), (No es igual a mayor que cero)"
		Leer CerrarCicloAux
		
		si (CerrarCicloAux > 0)
			CerrarCiclo = Verdadero
		fin si
	Fin Mientras
	
	Si ContadorProductos >= CantidadDeProductoQueAplicaDescuento Entonces
		SumatoriaDeProductos = SumatoriaDeProductos - ((SumatoriaDeProductos * DescuentoPorCantidad)/100)
	Fin Si
	
	CostoPorPesoReal = ((SumatoriaDeKilos) / 1000) * CostoPorPeso
	
	Escribir "Por favor escoja el destino"
	Leer Destino
	
	Si (destino es igual a "Santiago de Chile") Entonces
		SumatoriaDestino = Destino1Precio + SumatoriaDestino
	Fin si
	
	Si (destino es igual a "Caracas") Entonces
		SumatoriaDestino = Destino2Precio + SumatoriaDestino
	Fin si
	
	DestinoTotal = SumatoriaDestino + CostoPorPesoReal
	
	Total = DestinoTotal + SumatoriaDeProductos
	
	Escribir "Introduzca el código de un cupón de descuento válido"
	Leer CuponCodigoInput
	
	si (CuponCodigo es igual a CuponCodigoInput) Entonces
		Total = Total - ((Total*CuponDescuento)/100)
		AplicaDescuentoPorCupon = Verdadero
	sino
		Escribir "Código de cupón inválido"
	fin si
	
	Total = Total + ((Total*IVA)/100);
	
	Escribir "Total: $", Total
	Escribir "Impuesto aplicado (IVA): %", IVA
	Escribir "Costo por envío: $", DestinoTotal
	Escribir "Cantidad de productos obtenidos: ", ContadorDeProductos
	
	si (AplicaDescuentoPorCupon es verdadero) Entonces
		Escribir "Descuento por cupón: %", CuponDescuento
	fin si
	
	si (DescuentoPorCantidadDeProductos es verdadero) Entonces
		Escribir "Descuento por cantidad de productos: %", DescuentoPorCantidad
	fin si
FinAlgoritmo