Algoritmo natacioValienteIsabel
	//Isabel Valiente Pardo
	
	//Primer preguntem quants jutges hi ha.
	Escribir 'Quants jutges hi ha?'
	Leer numJutges
	numDePaisosParticipants = 0
	
	//El repetir ho utilitzem per a continuar afegint països.
	Repetir
		
		Escribir 'Nom del país: '
		Leer nomPais
		numDePaisosParticipants = numDePaisosParticipants + 1
		
		puntuacio = 0
		
		teUn10 = Falso
		//Posem un para, serveix perquè demane tantes puntuacions com jutges hi ha.
		para jutge = 1 hasta numJutges
			Escribir 'Dis-me la puntuació del jutge ' jutge ' :'
			leer puntuacioJutge
			
			//El mentres serveix perquè no es puga posar una nota que no siga del 0 al 10.
			Mientras puntuacioJutge >10 o puntuacioJutge < 0 Hacer
				Escribir 'Error, la puntuació no pot ser major a 10 ni menor a 0'
				leer puntuacioJutge
			Fin Mientras
			
			si puntuacioJutge == 10
				teUn10 = Verdadero
			FinSi
			
			puntuacio = puntuacio + puntuacioJutge
			
			
		FinPara
		puntuacioMitja= puntuacio/numJutges
		
		//posem una condició per a saber quí es el país guanyador.
		si puntuacioMitja > puntuacioGuanyadora
			puntuacioGuanyadora= puntuacioMitja 
			paisGandaor = nomPais
		FinSi
		
		puntuacioTotal = puntuacioTotal + puntuacioMitja
		
		Escribir 'El país (' nomPais ') ha tret una puntuació mitjana de:' puntuacioMitja 
		
		//condició per a saber si ha tret un 10 o no.
		si teUn10 == Verdadero
			Escribir 'Ha tingut un 10'
		sino 
			Escribir 'No ha tingut cap 10'
		FinSi
		
		escribir 'Vols introduir un altre país? (s = si, n = no)'
		leer resposta
		
	Hasta Que resposta == 'n'
	puntuacioMitjaTotal = puntuacioTotal/ numDePaisosParticipants
	
	escribir 'Han participat ' numDePaisosParticipants ' països.'
	escribir 'País guanyador és ' paisGandaor ' amb la puntuació ' puntuacioGuanyadora
	Escribir 'La mitjana de tots els països és: ' puntuacioMitjaTotal
	
FinAlgoritmo
