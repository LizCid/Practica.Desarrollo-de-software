Proceso TarotTresCartas
    // --- Declaración de variables ---
    Definir i, carta1, carta2, carta3 Como Entero
    Definir nombre, opcion Como Cadena
    Dimension cartas[22]   // Creamos un arreglo de 22 posiciones (Arcanos Mayores)
    
    // --- Inicializamos el mazo con los 22 Arcanos Mayores ---
    cartas[1] <- "[1m[35mEl Loco"
    cartas[2] <- "[1m[35mEl Mago"
    cartas[3] <- "[1m[35mLa Sacerdotisa"
    cartas[4] <- "[1m[35mLa Emperatriz"
    cartas[5] <- "[1m[35mEl Emperador"
    cartas[6] <- "[1m[35mEl Sumo Sacerdote"
    cartas[7] <- "[1m[35mLos Enamorados"
    cartas[8] <- "[1m[35mEl Carro"
    cartas[9] <- "[1m[35mLa Justicia"
    cartas[10] <- "[1m[35mEl Ermitaño"
    cartas[11] <- "[1m[35mLa Rueda de la Fortuna"
    cartas[12] <- "[1m[35mLa Fuerza"
    cartas[13] <- "[1m[35mEl Colgado"
    cartas[14] <- "[1m[35mLa Muerte"
    cartas[15] <- "[1m[35mLa Templanza"
    cartas[16] <- "[1m[35mEl Diablo"
    cartas[17] <- "[1m[35mLa Torre"
    cartas[18] <- "[1m[35mLa Estrella"
    cartas[19] <- "[1m[35mLa Luna"
    cartas[20] <- "[1m[35mEl Sol"
    cartas[21] <- "[1m[35mEl Juicio"
    cartas[22] <- "[1m[35mEl Mundo"
    
    // --- Ciclo principal ---
    Repetir
        // Pedir el nombre del consultante
        Escribir "[1m[36mPor favor, ingresa tu nombre para la lectura:"
        Leer nombre
        
        // --- Mensaje inicial ---
        Escribir "[1m[36mHola ", nombre, ",[1m[36m bienvenido/a al Tarot de 3 Cartas"
        Escribir "[1m[36mSe seleccionarán al azar 3 cartas (Pasado, Presente y Futuro)"
        
        // --- Seleccionar 3 cartas distintas ---
        carta1 <- Aleatorio(1,22)   // Primera carta aleatoria
        
        Repetir
            carta2 <- Aleatorio(1,22)   // Segunda carta
        Hasta Que carta2 <> carta1     // Aseguramos que no se repita
        
        Repetir
            carta3 <- Aleatorio(1,22)   // Tercera carta
        Hasta Que (carta3 <> carta1) Y (carta3 <> carta2)  // Distinta a las anteriores
        
        // --- Mostrar resultados ---
        Escribir "[1m[36m------------------------------------"
        Escribir "[1m[36mLectura para: ", nombre
        Escribir "[1m[36mPasado: ", cartas[carta1]
        Escribir "[1m[36mPresente: ", cartas[carta2]
        Escribir "[1m[36mFuturo: ", cartas[carta3]
        Escribir "[1m[36m------------------------------------"
        
        // --- Preguntar si desea otra lectura ---
        Escribir "[1m[36m¿Deseas otra lectura? (SI/NO)"
        Leer opcion
        
    Hasta Que Mayusculas(opcion) = "NO"   // Se repite hasta que diga "NO"
    
    Escribir "[1m[36mGracias por consultar el Tarot, hasta pronto."
FinProceso
