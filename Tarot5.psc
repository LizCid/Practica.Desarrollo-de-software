// -------------------------
// Funci�n para validar nombre o apellido (letras, espacios, � y tildes)
// -------------------------
Funci�n resultado <- EsTextoValido(txt Por Valor)
Definir i Como Entero
Definir valido Como L�gico
Definir c Como Cadena
valido <- Verdadero

// Si est� vac�o, no es v�lido
Si Longitud(txt)=0 Entonces
	valido <- Falso
SiNo
	Para i<-1 Hasta Longitud(txt) Hacer
		c <- Subcadena(txt,i,i)
		
		// Verifica si c est� en el rango A-Z, a-z, espacio, �, �, vocales acentuadas
		Si No ( (c>="A" Y c<="Z") O (c>="a" Y c<="z") O (c=" ") O (c="�") O (c="�") O (c="�") O (c="�") O (c="�") O (c="�") O (c="�") O (c="�") O (c="�") O (c="�") O (c="�") O (c="�") ) Entonces
			valido <- Falso
		FinSi
	FinPara
FinSi

// Retorna 1 si es v�lido, 0 si no
Si valido Entonces
	resultado <- 1
SiNo
	resultado <- 0
    FinSi
FinFunci�n


// -------------------------
// Proceso principal
// -------------------------
Proceso TarotInteractivo
    Definir cartas Como Cadena
    Definir nombre, apellido, nombreCompleto Como Cadena
    Definir opcion Como Cadena
    Definir carta1, carta2, carta3 Como Entero
    Dimension cartas[22]
    Dimension interp[22]
	
    // Inicializamos el mazo con los 22 Arcanos Mayores
    cartas[1] <- "El Loco"                 ; interp[1]  <- "Nuevos comienzos, libertad"
    cartas[2] <- "El Mago"                 ; interp[2]  <- "Habilidad, iniciativa"
    cartas[3] <- "La Sacerdotisa"          ; interp[3]  <- "Intuici�n, misterio"
    cartas[4] <- "La Emperatriz"           ; interp[4]  <- "Creatividad, abundancia"
    cartas[5] <- "El Emperador"            ; interp[5]  <- "Orden, autoridad"
    cartas[6] <- "El Sumo Sacerdote"       ; interp[6]  <- "Tradici�n, gu�a"
    cartas[7] <- "Los Enamorados"          ; interp[7]  <- "Decisiones, uni�n"
    cartas[8] <- "El Carro"                ; interp[8]  <- "Victoria, avance"
    cartas[9] <- "La Justicia"             ; interp[9]  <- "Equilibrio, verdad"
    cartas[10] <- "El Ermita�o"            ; interp[10] <- "Reflexi�n, b�squeda interior"
    cartas[11] <- "La Rueda de la Fortuna" ; interp[11] <- "Cambio, destino"
    cartas[12] <- "La Fuerza"              ; interp[12] <- "Coraje, autocontrol"
    cartas[13] <- "El Colgado"             ; interp[13] <- "Pausas, nuevo enfoque"
    cartas[14] <- "La Muerte"              ; interp[14] <- "Transformaci�n, cierre"
    cartas[15] <- "La Templanza"           ; interp[15] <- "Equilibrio, paciencia"
    cartas[16] <- "El Diablo"              ; interp[16] <- "Ataduras, sombra"
    cartas[17] <- "La Torre"               ; interp[17] <- "Ruina repentina, revelaci�n"
    cartas[18] <- "La Estrella"            ; interp[18] <- "Esperanza, inspiraci�n"
    cartas[19] <- "La Luna"                ; interp[19] <- "Incertidumbre, subconsciente"
    cartas[20] <- "El Sol"                 ; interp[20] <- "�xito, claridad"
    cartas[21] <- "El Juicio"              ; interp[21] <- "Renovaci�n, llamado"
    cartas[22] <- "El Mundo"               ; interp[22] <- "Culminaci�n, logro"
	
    Escribir "Bienvenido al tarot JB del presente, pasado y futuro"
	Escribir "Advertencia solo es un juego"
	
    Repetir
        Escribir "�Te gustaria recibir una lectura? "
		Escribir "por favor escribe SI o NO"
        Leer opcion
		
        Segun May�sculas(opcion) Hacer
            "SI":
                // Pedir nombre y apellido
                Repetir
                    Escribir "Ingresa tu nombre:"
                    Leer nombre
                Hasta Que EsTextoValido(nombre) = 1
				
                Repetir
					Escribir "Creo no comprendo bien puedes por favor escribir de nuevo tu nombre"
                    //Escribir "Ingresa tu apellido:"
                    Leer apellido
                Hasta Que EsTextoValido(apellido) = 1
				
                nombreCompleto <- nombre + " " + apellido
				
                // Selecci�n de cartas
                carta1 <- Aleatorio(1,22)
                Repetir
                    carta2 <- Aleatorio(1,22)
                Hasta Que carta2 <> carta1
                Repetir
                    carta3 <- Aleatorio(1,22)
                Hasta Que (carta3 <> carta1) Y (carta3 <> carta2)
				
                // Mostrar lectura
                Escribir "Lectura personalizada para: ", nombreCompleto
                Escribir "Pasado:   ", cartas[carta1]
                Escribir "  Interpretaci�n: ", interp[carta1]
                Escribir "Presente: ", cartas[carta2]
                Escribir "  Interpretaci�n: ", interp[carta2]
                Escribir "Futuro:   ", cartas[carta3]
                Escribir "  Interpretaci�n: ", interp[carta3]
				
            "NO":
                Escribir "Gracias por consultar el Tarot JB. Hasta pronto."
            De Otro Modo:
                Escribir "Opci�n inv�lida. Escribe SI o NO."
        FinSegun
    Hasta Que May�sculas(opcion) = "NO"
FinProceso

