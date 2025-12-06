Algoritmo piedra_papel_tijera
	Escribir 'Elija una opcion'
	Escribir '1. PIEDRA'
	Escribir '2. PAPEL'
	Escribir '3. TIJERAS'
	Leer player
	cpu <- azar(3)+1
	Si player==cpu Entonces
		Escribir 'Es un empate ', player, ' VRS ', cpu
	SiNo
		Según player Hacer
			1:
				Si cpu=2 Entonces
					Escribir 'El ganador es CPU'
					Escribir 'Piedra vrs Papel'
				SiNo
					Escribir 'El ganador es PLAYER'
					Escribir 'Piedra vrs Tijeras'
				FinSi
			2:
				Si cpu=3 Entonces
					Escribir 'El ganador es CPU'
					Escribir 'Piedra vrs Tijera'
				SiNo
					Escribir 'El ganador es PLAYER'
					Escribir 'Papel vrs Piedra'
				FinSi
			3:
				Si cpu=1 Entonces
					Escribir 'El ganador es CPU'
					Escribir 'Tijera vrs Piedra'
				SiNo
					Escribir 'El ganador es PLAYER'
					Escribir 'Tijera vrs Papel'
				FinSi
			De Otro Modo:
				Escribir 'Numero equivocado'
		FinSegún
	FinSi
FinAlgoritmo
