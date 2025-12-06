Algoritmo Piedra_Papel_Tijera_Mejorado
    // 1. Declaramos variables para controlar el juego y el puntaje
    Definir opcion_juego Como Caracter
    Definir jugador_gana, cpu_gana Como Entero
    jugador_gana <- 0
    cpu_gana <- 0
    opcion_juego <- "S" // Inicializamos para entrar al bucle

    // 3. ESTRUCTURA REPETITIVA (Bucle Mientras): Permite jugar múltiples rondas.
    Mientras Mayusculas(opcion_juego) = "S" Hacer
        Escribir " " // Espacio en blanco para claridad
        Escribir "--- RONDA ACTUAL ---"

        // Llamamos a la FUNCIÓN que contiene la lógica principal del juego (Implementación de la Unidad 3)
        Definir resultado Como Caracter
        resultado <- EjecutarRonda()

        // 2. ESTRUCTURA LÓGICA (Si): Actualiza el puntaje basado en el resultado de la función.
        Si resultado = "PLAYER" Entonces
            jugador_gana <- jugador_gana + 1
        SiNo
            Si resultado = "CPU" Entonces
                cpu_gana <- cpu_gana + 1
            FinSi
        FinSi

        // Mostramos el puntaje actual
        Escribir " "
        Escribir "PUNTAJE ACTUAL: Jugador: ", jugador_gana, " | CPU: ", cpu_gana

        // Preguntamos si el jugador quiere seguir jugando
        Escribir " "
        Escribir "¿Desea jugar otra ronda? (S/N)"
        Leer opcion_juego

    FinMientras

    // Mensaje final
    Escribir " "
    Escribir "--- JUEGO TERMINADO ---"
    Escribir "PUNTAJE FINAL: Jugador: ", jugador_gana, " | CPU: ", cpu_gana
FinAlgoritmo

// FUNCIÓN DE LA TERCERA UNIDAD (Implementa la lógica central de una ronda)
Funcion resultado_ronda <- EjecutarRonda()
    // 4. COMENTARIO: Función que ejecuta una ronda del juego y devuelve el ganador.

    Definir player, cpu Como Entero

    Escribir 'Elija una opcion (1-3):'
    Escribir '1. PIEDRA'
    Escribir '2. PAPEL'
    Escribir '3. TIJERAS'
    Leer player

    // COMENTARIO: Aseguramos que el valor esté entre 1 y 3 (el valor devuelto por azar es entre 0 y 2)
    cpu <- azar(3)+1

    resultado_ronda <- "EMPATE" // Asumimos empate por defecto

    // ESTRUCTURA LÓGICA: Condición principal de Empate
    Si player=cpu Entonces
        Escribir 'Es un empate: ', player, ' VRS ', cpu
    SiNo // Condición de No Empate
        Según player Hacer
            1: // Player eligió PIEDRA
                Si cpu=2 Entonces // CPU eligió Papel (CPU Gana)
                    Escribir 'El ganador es CPU (Papel cubre Piedra)'
                    resultado_ronda <- "CPU"
                SiNo // CPU eligió Tijeras (PLAYER Gana)
                    Escribir 'El ganador es PLAYER (Piedra rompe Tijeras)'
                    resultado_ronda <- "PLAYER"
                FinSi
            2: // Player eligió PAPEL
                Si cpu=3 Entonces // CPU eligió Tijeras (CPU Gana)
                    Escribir 'El ganador es CPU (Tijera corta Papel)'
                    resultado_ronda <- "CPU"
                SiNo // CPU eligió Piedra (PLAYER Gana)
                    Escribir 'El ganador es PLAYER (Papel cubre Piedra)'
                    resultado_ronda <- "PLAYER"
                FinSi
            3: // Player eligió TIJERAS
                Si cpu=1 Entonces // CPU eligió Piedra (CPU Gana)
                    Escribir 'El ganador es CPU (Piedra rompe Tijeras)'
                    resultado_ronda <- "CPU"
                SiNo // CPU eligió Papel (PLAYER Gana)
                    Escribir 'El ganador es PLAYER (Tijera corta Papel)'
                    resultado_ronda <- "PLAYER"
                FinSi
            De Otro Modo:
                Escribir 'ERROR: Opción de jugador inválida. Se registra como empate.'
        FinSegún
    FinSi
FinFuncion
