Algoritmo Gestion_Jean
	
    Definir codigo, talla, botones, tenidos, opcion Como Entero
    Definir color, fueTenido, estadoTela Como Caracter
    Definir precio, humedad Como Real
	
    Escribir "===== REGISTRO DEL JEAN ====="
	
    Escribir "Ingrese el codigo:"
    Leer codigo
    Escribir "Ingrese el color:"
    Leer color
    Escribir "Ingrese la talla:"
    Leer talla
    Escribir "¿El jean fue teñido? (SI/NO):"
    Leer fueTenido
    Escribir "Ingrese la cantidad de teñidos:"
    Leer tenidos
    Escribir "Ingrese el precio:"
    Leer precio
    Escribir "Ingrese la cantidad de botones:"
    Leer botones
    Escribir "Ingrese la humedad:"
    Leer humedad
    Escribir "Ingrese el estado de la tela:"
    Leer estadoTela
	
    Repetir
        Escribir "===== MENU ====="
        Escribir "1. Mostrar datos"
        Escribir "2. Lavar jean"
        Escribir "3. Secar jean"
        Escribir "4. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "Codigo: ", codigo
                Escribir "Color: ", color
                Escribir "Talla: ", talla
                Escribir "Fue teñido: ", fueTenido
                Escribir "Cantidad de teñidos: ", tenidos
                Escribir "Precio: $", precio
                Escribir "Botones: ", botones
                Escribir "Humedad: ", humedad
                Escribir "Estado de la tela: ", estadoTela
				
            2:
                Si tenidos > 0 Entonces
                    tenidos <- tenidos - 1
                    Escribir "El jean fue lavado."
                    Escribir "Teñidos restantes: ", tenidos
                SiNo
                    Escribir "No se pueden disminuir mas los teñidos."
                FinSi
				
            3:
                humedad <- humedad - 10
				
                Si humedad < 0 Entonces
                    humedad <- 0
                FinSi
				
                Escribir "El jean fue secado."
                Escribir "Humedad actual: ", humedad
				
            4:
                Escribir "Saliendo del sistema..."
				
            De Otro Modo:
                Escribir "Opcion incorrecta."
        FinSegun
    Hasta Que opcion = 4
	
FinAlgoritmo

