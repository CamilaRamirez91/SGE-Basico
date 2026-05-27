Proceso SGE_Basico
	
    // Variables principales
    Definir opcion, contador, i, buscarID Como Entero
    Definir banderaSalir, encontrado Como Logico
    
    // Arreglos para almacenar estudiantes
    Dimension idEstudiante[100]
    Dimension nombreEstudiante[100]
    
    // Inicialización
    contador <- 1
    banderaSalir <- Falso
	
    Mientras banderaSalir = Falso Hacer
        
        Escribir "=============================="
        Escribir " SISTEMA GESTION ESTUDIANTES "
        Escribir "=============================="
        Escribir "1. Agregar estudiante"
        Escribir "2. Mostrar estudiantes"
        Escribir "3. Buscar estudiante por ID"
        Escribir "4. Salir"
        Escribir "Seleccione una opcion:"
        Leer opcion
        
        Segun opcion Hacer
            
            1:
                
                Si contador <= 100 Entonces
                    
                    Escribir "Ingrese ID del estudiante:"
                    Leer idEstudiante[contador]
                    
                    Escribir "Ingrese nombre del estudiante:"
                    Leer nombreEstudiante[contador]
                    
                    Escribir "Estudiante agregado correctamente"
                    
                    contador <- contador + 1
                    
                SiNo
                    
                    Escribir "Limite de estudiantes alcanzado"
                    
                FinSi
                
            2:
                
                Si contador = 1 Entonces
                    
                    Escribir "No hay estudiantes registrados"
                    
                SiNo
                    
                    Escribir "===== LISTA DE ESTUDIANTES ====="
                    
                    Para i <- 1 Hasta contador - 1 Hacer
                        
                        Escribir "ID: ", idEstudiante[i]
                        Escribir "Nombre: ", nombreEstudiante[i]
                        Escribir "-----------------------------"
                        
                    FinPara
                    
                FinSi
                
            3:
                
                encontrado <- Falso
                
                Escribir "Ingrese ID a buscar:"
                Leer buscarID
                
                Para i <- 1 Hasta contador - 1 Hacer
                    
                    Si idEstudiante[i] = buscarID Entonces
                        
                        Escribir "===== ESTUDIANTE ENCONTRADO ====="
                        Escribir "ID: ", idEstudiante[i]
                        Escribir "Nombre: ", nombreEstudiante[i]
                        
                        encontrado <- Verdadero
                        
                    FinSi
                    
                FinPara
                
                Si encontrado = Falso Entonces
                    
                    Escribir "Estudiante no encontrado"
                    
                FinSi
                
            4:
                
                banderaSalir <- Verdadero
                Escribir "Saliendo del sistema..."
                
            De Otro Modo:
                
                Escribir "Opcion invalida"
                
        FinSegun
        
    FinMientras
	
FinProceso