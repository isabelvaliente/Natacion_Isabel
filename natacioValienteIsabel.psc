Algoritmo natacioValienteIsabel
	//Isabel Valiente Pardo
	
	//Primer preguntem quants jutges hi ha.
	Escribir 'Quants jutges hi ha?'
	Leer numJutges
	numDePaisosParticipants = 0
	
	//El repetir ho utilitzem per a continuar afegint pa�sos.
	Repetir
		
		Escribir 'Nom del pa�s: '
		Leer nomPais
		numDePaisosParticipants = numDePaisosParticipants + 1
		
		puntuacio = 0
		
		teUn10 = Falso
		//Posem un para, serveix perqu� demane tantes puntuacions com jutges hi ha.
		para jutge = 1 hasta numJutges
			Escribir 'Dis-me la puntuaci� del jutge ' jutge ' :'
			leer puntuacioJutge
			
			//El mentres serveix perqu� no es puga posar una nota que no siga del 0 al 10.
			Mientras puntuacioJutge >10 o puntuacioJutge < 0 Hacer
				Escribir 'Error, la puntuaci� no pot ser major a 10 ni menor a 0'
				leer puntuacioJutge
			Fin Mientras
			
			si puntuacioJutge == 10
				teUn10 = Verdadero
			FinSi
			
			puntuacio = puntuacio + puntuacioJutge
			
			
		FinPara
		puntuacioMitja= puntuacio/numJutges
		
		//posem una condici� per a saber qu� es el pa�s guanyador.
		si puntuacioMitja > puntuacioGuanyadora
			puntuacioGuanyadora= puntuacioMitja 
			paisGandaor = nomPais
		FinSi
		
		puntuacioTotal = puntuacioTotal + puntuacioMitja
		
		Escribir 'El pa�s (' nomPais ') ha tret una puntuaci� mitjana de:' puntuacioMitja 
		
		//condici� per a saber si ha tret un 10 o no.
		si teUn10 == Verdadero
			Escribir 'Ha tingut un 10'
		sino 
			Escribir 'No ha tingut cap 10'
		FinSi
		
		escribir 'Vols introduir un altre pa�s? (s = si, n = no)'
		leer resposta
		
	Hasta Que resposta == 'n'
	puntuacioMitjaTotal = puntuacioTotal/ numDePaisosParticipants
	
	escribir 'Han participat ' numDePaisosParticipants ' pa�sos.'
	escribir 'Pa�s guanyador �s ' paisGandaor ' amb la puntuaci� ' puntuacioGuanyadora
	Escribir 'La mitjana de tots els pa�sos �s: ' puntuacioMitjaTotal
	
FinAlgoritmo
