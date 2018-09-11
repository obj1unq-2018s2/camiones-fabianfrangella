object knightRider {

	method peso() = 500 // kg

	method peligrosidad() = 10

}

object bumbleBee {

	var property esAuto = true

	method peso() = 800

	method peligrosidad() = if (esAuto) 15 else 30

}

object paqueteDeLadrillos {

	var property peso = cantidadDeLadrillos * 2
	var property cantidadDeLadrillos = 1
	var property peligrosidad = 2

	method agregarLadrillo() {
		cantidadDeLadrillos += 1
	}

}

object arenaAGranel {

	var property peso
	var property peligrosidad = 1

}

object bateriaAntiAerea {

	var property estaCargada = true

	method peso() = if (estaCargada) 300 else 200

	method peligrosidad() = if (estaCargada) 100 else 0

}

object contenedorPortuario {

	var property cosas = []

	method peso() = cosas.sum{ cosa => cosa.peso() }

}

object residuosRadioactivos {

	var property peso

	method peligrosidad() = 200

}

object embalajeDeSeguridad {

	var property objeto

	method peso() = objeto.peso()

	method peligrosidad() = objeto.peligrosidad() / 2

}

object deposito {

	var property cosas = [ knightRider, bumbleBee ]

	method cargarCamion(camion) {
		cosas.forEach{ cosa => camion.cargar(cosa)}
	}

}

