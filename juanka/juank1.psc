Proceso sin_titulo
	Definir producto,i,cantidad,surtir,cantidad1 Como Real
	Definir pagar Como Real
	paletas<-20
	galleta<-30
	refresco<-55
	exisgalle<-10
	exisref<-10
	exispale<-10
	vendido<-0
	cerrar<-0
	ACUMULADOR<-0
	cerrar2<-0
	Para i<-1 Hasta 2 Hacer
		Si cerrar=2 o cerrar2>1 Entonces
			Escribir 'gracias por su compra'
		Sino
			Escribir 'producto a comprar'
			Escribir 'galletas(1), paletas(2), refresco(3)'
			Leer producto
			producto<-trunc(producto)
			Si vendido=producto Entonces
				Escribir 'producto seleccionado ya adquirido'
				i<-i-1
			Sino
				Si cerrar>2 Entonces
					Escribir 'INTENTE NUEVAMENTE'
					Escribir 'cantidad maxima alcanzada'
					i<-i+1
					cerrar<-cerrar-cantidad
				Sino
					Segun producto  Hacer
						1:
							Escribir 'cantidad a comprar'
							Leer cantidad
							cerrar<-cerrar+cantidad
							cantidad<-trunc(cantidad)
							Si cantidad<=0 Entonces
								Escribir 'no hay producatos a comprar'
								i<-i-1
							Sino
								Si cantidad>2 Entonces
									Escribir 'unicamente puede comrar 2 productos del mismo tipo'
									i<-i-1
								Sino
									Si exisgalle<cantidad Entonces
										Escribir 'no hay productos disponibles'
										i<-i-1
									Sino
										exisgalle<-exisgalle-cantidad
										pagar<-cantidad*galleta
										Escribir 'total a pagar___$',pagar
										Escribir '................................'
										Escribir 'TIN TIN TIN'
										Escribir 'productos restantes_',exisgalle
										Escribir '¿quiere resurtir el producto?'
										Escribir 'Si(1) No(2)'
										Leer surtir
										surtir<-trunc(surtir)
										Segun surtir  Hacer
											1:
												Escribir 'cantidad a resurtir'
												Leer cantidad1
												canti<-trunc(cantidad1)
												Si canti<=0 Entonces
													Escribir 'Erro al digitar la cantidad'
													i<-i-1
												Sino
													exisgalle<-exisgalle+canti
													Escribir 'se an resurtido existen',exisgalle,'.para su venta'
													vendido<-vendido+producto
												FinSi
											2:
												vendido<-vendido+producto
											De Otro Modo:
												Escribir 'Error'
										FinSegun
										ACUMULADOR<-ACUMULADOR+pagar
										Escribir "DW",ACUMULADOR
									FinSi
								FinSi
							FinSi
						2:
							Escribir "cantidad a comprar"
							Leer cantidad
							cantidad<-trunc(cantidad)
							cerrar<-cerrar+cantidad
							Si cantidad<=0 Entonces
								Escribir 'no hay productos a comprar'
								i<-i-1
							Sino
								Si cantidad>2 Entonces
									Escribir 'unicamente puede comprar 2 productos del mismo tipo'
									i<-i-1
								Sino
									Si exispale<cantidad Entonces
										Escribir 'no hay productos disponibles'
										i<-i-1
									Sino
										exispale<-exispale-cantidad
										pagar<-cantidad*paletas
										Escribir 'total a pagar_$',pagar
										Escribir '......................'
										Escribir 'TIN TIN TIN'
										Escribir 'productos restantes_',exispale
										Escribir '¿quiere resurtir el producto?'
										Escribir 'Si(1) No(2)'
										Leer surtir
										surtir<-trunc(surtir)
										Segun surtir  Hacer
											1:
												Escribir 'cantidad a resurtir'
												Leer canti
												canti<-trunc(canti)
												Si canti<0 Entonces
													Escribir 'error al digitar la cnatidad'
													i<-i-1
												Sino
													exispale<-exispale+canti
													Escribir 'se a resurtido, existen',exispale,'para su venta'
													vendido<-vendido+producto
												FinSi
											2:
												vendido<-vendido+producto
											De Otro Modo:
												Escribir 'Error'
										FinSegun
										ACUMULADOR<-ACUMULADOR+pagar
										Escribir "SDA",ACUMULADOR
									FinSi
								FinSi
							FinSi
						3:
							Escribir "cantidad a comprar"
							Leer cantidad
							cantidad<-trunc(cantidad)
							carrar<-cerrar+cantidad
							Si cantidad<=0 Entonces
								Escribir 'no hay productos a comprar'
								i<-i-1
							Sino
								Si cantidad>2 Entonces
									Escribir 'unicamente puedes comprar 2 productos del mismo'
									i<-i-1
								Sino
									Si exisref<cantidad Entonces
										Escribir 'no hay productos disponibles'
										i<-i-1
									Sino
										exisref<-exisref-cantidad
										pagar<-cantidad*refresco
										Escribir 'total a pagar__$',pagar
										Escribir '..................'
										Escribir 'TIN TIN TIN'
										Escribir 'productos restantes;_',exisref
										Escribir '¿quiere resurtir el producto?'
										Escribir 'Si(1) N0(2)'
										Leer surtir
										surtir<-trunc(surtir)
										Segun surtir  Hacer
											1:
												Escribir 'cantidad a resurtir'
												Leer cantidad1
												cantidad1<-trunc(cantidad)
												cerrar2<-cerrar2+cerrar
												Si cerrar>2 Entonces
													Escribir "error solo puede comprar 2 productos"
													i<-i-1
												Sino
													Si cantidad1<0 Entonces
														Escribir 'error al digitar cantidad'
														i<-i-1
													Sino
														exisref<-exisref+cantidad1
														Escribir 'se a resurtido la cantidad de_',cantidad1,'existen_',exisref,'_para su venta'
														vendido<-vendido+producto
													FinSi
												FinSi
											2:
												vendido<-vendido+producto
											De Otro Modo:
												Escribir 'error'
										FinSegun
										ACUMULADOR<-ACUMULADOR+pagar
									FinSi
								FinSi
							FinSi
						De Otro Modo:
							Escribir 'error intente de nuevo'
							i<-i-1
					FinSegun
				FinSi
			FinSi
		FinSi
	FinPara
	ACUMULADOR<-ACUMULADOR+pagar
	Escribir 'TOTAL A PAGAR_$',ACUMULADOR
FinProceso

