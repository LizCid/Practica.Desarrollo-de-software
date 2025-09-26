// -Función para salir de la lectura
Funcion resultado <- ProcesarComando(comando Por Valor)
    Definir resultado Como Entero
    resultado <- 0 // 0 = continuar, 1 = salir
	
    Si comando = "SALIR" Entonces
        resultado <- 1
    FinSi
FinFuncion


// Proceso principal
Proceso TarotInteractivo
    Definir cartas, interp Como Cadena
    Definir nombre Como Cadena
    Definir resultado Como Entero
    Definir carta1, carta2, carta3 Como Entero
    Dimension cartas[22]
    Dimension interp[22]
	
    // Inicializamos el mazo con los 22 Acranos Mayores
	cartas[1] <- "[1m[35mEl Loco"                 ; interp[1]  <- "[1m[35mNuevos comienzos, libertad"
    cartas[2] <- "[1m[35mEl Mago"                 ; interp[2]  <- "[1m[35mHabilidad, iniciativa"
    cartas[3] <- "[1m[35mLa Sacerdotisa"          ; interp[3]  <- "[1m[35mIntuición, misterio"
    cartas[4] <- "[1m[35mLa Emperatriz"           ; interp[4]  <- "[1m[35mCreatividad, abundancia"
    cartas[5] <- "[1m[35mEl Emperador"            ; interp[5]  <- "[1m[35mOrden, autoridad"
    cartas[6] <- "[1m[35mEl Sumo Sacerdote"       ; interp[6]  <- "[1m[35mTradición, guía"
    cartas[7] <- "[1m[35mLos Enamorados"          ; interp[7]  <- "[1m[35mDecisiones, unión"
    cartas[8] <- "[1m[35mEl Carro"                ; interp[8]  <- "[1m[35mVictoria, avance"
    cartas[9] <- "[1m[35mLa Justicia"             ; interp[9]  <- "[1m[35mEquilibrio, verdad"
    cartas[10] <- "[1m[35mEl Ermitaño"            ; interp[10] <- "[1m[35mReflexión, búsqueda interior"
    cartas[11] <- "[1m[35mLa Rueda de la Fortuna" ; interp[11] <- "[1m[35mCambio, destino"
    cartas[12] <- "[1m[35mLa Fuerza"              ; interp[12] <- "[1m[35mCoraje, autocontrol"
    cartas[13] <- "[1m[35mEl Colgado"             ; interp[13] <- "[1m[35mPausas, nuevo enfoque"
    cartas[14] <- "[1m[35mLa Muerte"              ; interp[14] <- "[1m[35mTransformación, cierre"
    cartas[15] <- "[1m[35mLa Templanza"           ; interp[15] <- "[1m[35mEquilibrio, paciencia"
    cartas[16] <- "[1m[35mEl Diablo"              ; interp[16] <- "[1m[35mAtaduras, sombra"
    cartas[17] <- "[1m[35mLa Torre"               ; interp[17] <- "[1m[35mRuina repentina, revelación"
    cartas[18] <- "[1m[35mLa Estrella"            ; interp[18] <- "[1m[35mEsperanza, inspiración"
    cartas[19] <- "[1m[35mLa Luna"                ; interp[19] <- "[1m[35mIncertidumbre, subconsciente"
    cartas[20] <- "[1m[35mEl Sol"                 ; interp[20] <- "[1m[35mÉxito, claridad"
    cartas[21] <- "[1m[35mEl Juicio"              ; interp[21] <- "[1m[35mRenovación, llamado"
    cartas[22] <- "[1m[35mEl Mundo"               ; interp[22] <- "[1m[35mCulminación, logro"

    resultado <- 0
	
    // Ciclo para la lectura del tarot 
    Escribir "[1m[36mBienvenido al tarot JB del presente, pasado y futuro"
	Escribir "[1m[36mEscribe tu nombre para una lectura más personalizada:"
    
    Mientras resultado = 0 Hacer
        Leer nombre
		
        // Si no escribe nada, pedimos de nuevo
        Si Longitud(nombre) = 0 Entonces
            Escribir "[1m[31m Por favor escribe un nombre válido (o SALIR para terminar):"
        SiNo
            // Revisamos si el comando es SALIR
            resultado <- ProcesarComando(Mayusculas(nombre))
			
            Si resultado = 0 Entonces
                // Selección de cartas 
                carta1 <- Aleatorio(1,22)
				
                Repetir
                    carta2 <- Aleatorio(1,22)
                Hasta Que carta2 <> carta1
    			
                Repetir
                    carta3 <- Aleatorio(1,22)
                Hasta Que (carta3 <> carta1) Y (carta3 <> carta2)
				
                // Mostrar lectura 
				Escribir "[1m[36mPasado:   ", cartas[carta1]
				Escribir "[1m[36m  Interpretación: ", interp[carta1]
				Escribir "[1m[36mPresente: ", cartas[carta2]
				Escribir "[1m[36m  Interpretación: ", interp[carta2]
				Escribir "[1m[36mFuturo:   ", cartas[carta3]
				Escribir "[1m[36m  Interpretación: ", interp[carta3]
				Escribir "[1m[31mSi no deseeas otra lectura escribe salir "
				Escribir "[1m[31m o escribe el nuevo nombre:"			
            FinSi
        FinSi
    FinMientras
	
    Escribir "[1m[37mGracias por consultar el Tarot JB. Hasta pronto."
FinProceso
