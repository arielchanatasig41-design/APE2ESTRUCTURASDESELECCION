Algoritmo Sistema_Cuentas_Bancarias
	
    // ==========================================
    // DECLARACIÓN DE VARIABLES
    // ==========================================
    
    Definir dni, cantidad, i, cuenta, opcion Como Entero
    Definir origen, destino Como Entero
    Definir numeroCuenta Como Entero
    Definir saldo, monto Como Real
    
    // ==========================================
    // DIMENSIONAR LOS ARREGLOS
    // ==========================================
    
    Dimension numeroCuenta[3]
    Dimension saldo[3]
    
    // ==========================================
    // REGISTRO DEL CLIENTE
    // ==========================================
    
    Escribir "=================================="
    Escribir "   SISTEMA DE CUENTAS BANCARIAS"
    Escribir "=================================="
    
    Escribir "Ingrese el DNI del cliente:"
    Leer dni
    
    // ==========================================
    // CANTIDAD DE CUENTAS
    // ==========================================
    
    Escribir "¿Cuántas cuentas desea crear? (máximo 3)"
    Leer cantidad
    
    Mientras cantidad < 1 O cantidad > 3 Hacer
        Escribir "Cantidad no válida."
        Escribir "Ingrese una cantidad entre 1 y 3:"
        Leer cantidad
    FinMientras
    
    // ==========================================
    // REGISTRO DE LAS CUENTAS
    // ==========================================
    
    Para i <- 1 Hasta cantidad Hacer
        
        Escribir "----------------------------------"
        Escribir "Cuenta ", i
        
        Escribir "Ingrese el número de la cuenta:"
        Leer numeroCuenta[i]
        
        Escribir "Ingrese el saldo inicial:"
        Leer saldo[i]
        
        Mientras saldo[i] < 0 Hacer
            Escribir "El saldo no puede ser negativo."
            Escribir "Ingrese nuevamente el saldo:"
            Leer saldo[i]
        FinMientras
        
    FinPara
    
    // ==========================================
    // SELECCIONAR CUENTA
    // ==========================================
    
    Escribir "=================================="
    Escribir "Seleccione una cuenta:"
    
    Para i <- 1 Hasta cantidad Hacer
        Escribir i, ". Cuenta: ", numeroCuenta[i]
    FinPara
    
    Leer cuenta
    
    Mientras cuenta < 1 O cuenta > cantidad Hacer
        Escribir "Cuenta no válida."
        Escribir "Seleccione una cuenta entre 1 y ", cantidad, ":"
        Leer cuenta
    FinMientras
    
    // ==========================================
    // MENÚ PRINCIPAL
    // ==========================================
    
    Repetir
        
        Escribir ""
        Escribir "=================================="
        Escribir "        MENU BANCARIO"
        Escribir "=================================="
        Escribir "1. Ver atributos de la cuenta"
        Escribir "2. Enviar dinero"
        Escribir "3. Recibir dinero"
        Escribir "4. Transferir entre cuentas"
        Escribir "5. Salir"
        Escribir "=================================="
        Escribir "Seleccione una opción:"
        Leer opcion
        
        Segun opcion Hacer
            
				// ==================================
				// OPCIÓN 1: VER ATRIBUTOS
				// ==================================
            
            1:
                Escribir ""
                Escribir "===== DATOS DE LA CUENTA ====="
                Escribir "DNI del cliente: ", dni
                Escribir "Número de cuenta: ", numeroCuenta[cuenta]
                Escribir "Saldo disponible: $", saldo[cuenta]
				
				
				// ==================================
				// OPCIÓN 2: ENVIAR DINERO
				// ==================================
				
            2:
                Escribir ""
                Escribir "Ingrese el monto a enviar:"
                Leer monto
                
                Mientras monto <= 0 Hacer
                    Escribir "El monto debe ser mayor que 0."
                    Escribir "Ingrese nuevamente el monto:"
                    Leer monto
                FinMientras
                
                Si monto <= saldo[cuenta] Entonces
                    
                    saldo[cuenta] <- saldo[cuenta] - monto
                    
                    Escribir "Dinero enviado correctamente."
                    Escribir "Nuevo saldo: $", saldo[cuenta]
                    
                SiNo
                    
                    Escribir "Saldo insuficiente."
                    
                FinSi
				
				
				// ==================================
				// OPCIÓN 3: RECIBIR DINERO
				// ==================================
				
            3:
                Escribir ""
                Escribir "Ingrese el monto a recibir:"
                Leer monto
                
                Mientras monto <= 0 Hacer
                    Escribir "El monto debe ser mayor que 0."
                    Escribir "Ingrese nuevamente el monto:"
                    Leer monto
                FinMientras
                
                saldo[cuenta] <- saldo[cuenta] + monto
                
                Escribir "Dinero recibido correctamente."
                Escribir "Nuevo saldo: $", saldo[cuenta]
				
				
				// ==================================
				// OPCIÓN 4: TRANSFERENCIA
				// ==================================
				
            4:
                Escribir ""
                Escribir "===== TRANSFERENCIA ====="
                
                Escribir "Seleccione la cuenta de origen:"
                
                Para i <- 1 Hasta cantidad Hacer
                    Escribir i, ". Cuenta: ", numeroCuenta[i]
                FinPara
                
                Leer origen
                
                Mientras origen < 1 O origen > cantidad Hacer
                    Escribir "Cuenta de origen no válida."
                    Escribir "Seleccione entre 1 y ", cantidad, ":"
                    Leer origen
                FinMientras
                
                Escribir "Seleccione la cuenta de destino:"
                
                Para i <- 1 Hasta cantidad Hacer
                    Escribir i, ". Cuenta: ", numeroCuenta[i]
                FinPara
                
                Leer destino
                
                Mientras destino < 1 O destino > cantidad Hacer
                    Escribir "Cuenta de destino no válida."
                    Escribir "Seleccione entre 1 y ", cantidad, ":"
                    Leer destino
                FinMientras
                
                Si origen = destino Entonces
                    
                    Escribir "La cuenta de origen y destino no pueden ser iguales."
                    
                SiNo
                    
                    Escribir "Ingrese el monto a transferir:"
                    Leer monto
                    
                    Mientras monto <= 0 Hacer
                        Escribir "El monto debe ser mayor que 0."
                        Escribir "Ingrese nuevamente el monto:"
                        Leer monto
                    FinMientras
                    
                    Si saldo[origen] >= monto Entonces
                        
                        saldo[origen] <- saldo[origen] - monto
                        saldo[destino] <- saldo[destino] + monto
                        
                        Escribir "Transferencia realizada correctamente."
                        Escribir "Saldo cuenta origen: $", saldo[origen]
                        Escribir "Saldo cuenta destino: $", saldo[destino]
                        
                    SiNo
                        
                        Escribir "Saldo insuficiente en la cuenta de origen."
                        
                    FinSi
                    
                FinSi
				
				
				// ==================================
				// OPCIÓN 5: SALIR
				// ==================================
				
            5:
                Escribir ""
                Escribir "Saliendo del sistema..."
                Escribir "Gracias por utilizar el sistema bancario."
				
				
				// ==================================
				// OPCIÓN INCORRECTA
				// ==================================
				
            De Otro Modo:
                Escribir "Opción incorrecta. Intente nuevamente."
                
        FinSegun
        
    Hasta Que opcion = 5

FinAlgoritmo