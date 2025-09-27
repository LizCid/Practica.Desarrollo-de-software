// -------------------------
// Funci�n para salir de la lectura
// -------------------------
Funci�n resultado <- ProcesarComando(comando Por Valor)
	Definir resultado Como Entero
	resultado <- 0
	Si comando='NO' Entonces
		resultado <- 1 // 0 = continuar, 1 = salir
	FinSi
FinFunci�n

// -------------------------
// Funci�n para validar nombre o apellido (solo letras, espacios, � y tildes)
// -------------------------
Funci�n resultado <- EsTextoValido(txt Por Valor)
	Definir i Como Entero
	Definir valido Como L�gico
	valido <- Verdadero
	// Si est� vac�o, no es v�lido
	Si Longitud(txt)=0 Entonces
		valido <- Falso
	SiNo
		// Revisar cada car�cter
		Para i<-1 Hasta Longitud(txt) Hacer
			Si ((Subcadena(txt,i,i)<'A' O Subcadena(txt,i,i)>'Z') Y (Subcadena(txt,i,i)<'a' O Subcadena(txt,i,i)>'z') Y ( NO (Subcadena(txt,i,i)=' ') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�') Y  NO (Subcadena(txt,i,i)='�'))) Entonces
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
Algoritmo TarotInteractivo
	Definir cartas Como Cadena
	Definir nombre, apellido, nombreCompleto Como Cadena
	Definir resultado Como Entero
	Definir carta1, carta2, carta3 Como Entero
	Definir opcion Como Cadena
	Dimensionar cartas(22)
	Dimensionar interp(22)
	// Inicializamos el mazo con los 22 Arcanos Mayores
	cartas[1] <- "[1m[35mEl Loco"                 ; interp[1]  <- "[1m[35mNuevos comienzos, libertad"
    cartas[2] <- "[1m[35mEl Mago"                 ; interp[2]  <- "[1m[35mHabilidad, iniciativa"
    cartas[3] <- "[1m[35mLa Sacerdotisa"          ; interp[3]  <- "[1m[35mIntuici�n, misterio"
    cartas[4] <- "[1m[35mLa Emperatriz"           ; interp[4]  <- "[1m[35mCreatividad, abundancia"
    cartas[5] <- "[1m[35mEl Emperador"            ; interp[5]  <- "[1m[35mOrden, autoridad"
    cartas[6] <- "[1m[35mEl Sumo Sacerdote"       ; interp[6]  <- "[1m[35mTradici�n, gu�a"
    cartas[7] <- "[1m[35mLos Enamorados"          ; interp[7]  <- "[1m[35mDecisiones, uni�n"
    cartas[8] <- "[1m[35mEl Carro"                ; interp[8]  <- "[1m[35mVictoria, avance"
    cartas[9] <- "[1m[35mLa Justicia"             ; interp[9]  <- "[1m[35mEquilibrio, verdad"
    cartas[10] <- "[1m[35mEl Ermita�o"            ; interp[10] <- "[1m[35mReflexi�n, b�squeda interior"
    cartas[11] <- "[1m[35mLa Rueda de la Fortuna" ; interp[11] <- "[1m[35mCambio, destino"
    cartas[12] <- "[1m[35mLa Fuerza"              ; interp[12] <- "[1m[35mCoraje, autocontrol"
    cartas[13] <- "[1m[35mEl Colgado"             ; interp[13] <- "[1m[35mPausas, nuevo enfoque"
    cartas[14] <- "[1m[35mLa Muerte"              ; interp[14] <- "[1m[35mTransformaci�n, cierre"
    cartas[15] <- "[1m[35mLa Templanza"           ; interp[15] <- "[1m[35mEquilibrio, paciencia"
    cartas[16] <- "[1m[35mEl Diablo"              ; interp[16] <- "[1m[35mAtaduras, sombra"
    cartas[17] <- "[1m[35mLa Torre"               ; interp[17] <- "[1m[35mRuina repentina, revelaci�n"
    cartas[18] <- "[1m[35mLa Estrella"            ; interp[18] <- "[1m[35mEsperanza, inspiraci�n"
    cartas[19] <- "[1m[35mLa Luna"                ; interp[19] <- "[1m[35mIncertidumbre, subconsciente"
    cartas[20] <- "[1m[35mEl Sol"                 ; interp[20] <- "[1m[35m�xito, claridad"
    cartas[21] <- "[1m[35mEl Juicio"              ; interp[21] <- "[1m[35mRenovaci�n, llamado"
    cartas[22] <- "[1m[35mEl Mundo"               ; interp[22] <- "[1m[35mCulminaci�n, logro"
	
	resultado <- 0
	// Ciclo para la lectura del tarot
	Escribir "[1m[36mBienvenido al tarot JB del presente, pasado y futuro"
	
	Mientras resultado=0 Hacer
		Escribir '[1m[36m�Deseas una lectura de tarot? (SI / NO)'
		Leer opcion
		resultado <- ProcesarComando(MAYUSCULAS(opcion))
		Si resultado=0 Entonces
			Si MAYUSCULAS(opcion)='SI' Entonces
				// Leer nombre
				Escribir '[1m[36mIngresa tu nombre:'
				Leer nombre
				Si EsTextoValido(nombre)=0 Entonces
					Escribir '[1m[31mNombre inv�lido. Solo se permiten letras y espacios.'
				SiNo
					// Leer apellido
					Escribir '[1m[36mIngresa tu apellido:'
					Leer apellido
					Si EsTextoValido(apellido)=0 Entonces
						Escribir '[1m[31mApellido inv�lido. Solo se permiten letras y espacios.'
					SiNo
						nombreCompleto <- nombre+' '+apellido
						// Selecci�n de cartas
						carta1 <- Aleatorio(1,22)
						Repetir
							carta2 <- Aleatorio(1,22)
						Hasta Que carta2<>carta1
						Repetir
							carta3 <- Aleatorio(1,22)
						Hasta Que (carta3<>carta1) Y (carta3<>carta2)
						// Mostrar lectura
						Escribir "[1m[36mPasado:   ", cartas[carta1]
						Escribir "[1m[36m  Interpretaci�n: ", interp[carta1]
						Escribir "[1m[36mPresente: ", cartas[carta2]
						Escribir "[1m[36m  Interpretaci�n: ", interp[carta2]
						Escribir "[1m[36mFuturo:   ", cartas[carta3]
						Escribir "[1m[36m  Interpretaci�n: ", interp[carta3]
						Escribir "[1m[31mSi no deseeas otra lectura escribe salir "
						Escribir "[1m[31m o escribe el nuevo nombre:"	
					FinSi
				FinSi
			SiNo
				Escribir '[1m[31mOpci�n no v�lida. Escribe SI o NO.'
			FinSi
		FinSi
	FinMientras
	Escribir '[1m[37mGracias por consultar el Tarot JB. Hasta pronto.'
FinAlgoritmo
