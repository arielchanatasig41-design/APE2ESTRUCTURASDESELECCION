Algoritmo Control_De_Hora
	
    Definir hora, minutos, segundos, opcion Como Entero
	
    Escribir "Ingrese la hora:"
    Leer hora
    Escribir "Ingrese los minutos:"
    Leer minutos
    Escribir "Ingrese los segundos:"
    Leer segundos
	
    Repetir
        Escribir "------------------------"
        Escribir "Hora registrada: ", hora, ":", minutos, ":", segundos
        Escribir "------------------------"
		
        Escribir "¿Desea cambiar la hora?"
        Escribir "1. Si"
        Escribir "2. No"
        Leer opcion
		
        Si opcion = 1 Entonces
            Escribir "Ingrese la nueva hora:"
            Leer hora
            Escribir "Ingrese los nuevos minutos:"
            Leer minutos
            Escribir "Ingrese los nuevos segundos:"
            Leer segundos
        FinSi
    Hasta Que opcion = 2
	
    Escribir "Programa finalizado."
	
FinAlgoritmo

