
object bombon {
	var peso = 15
	
	method precio() = 5
	
	method peso() = peso
	
	method sabor() = "frutilla"
	
	method esLibreDeGluten() = true
	
	method recibirMordisco() {
		peso = 0.max( (peso * 0.8) -1 )
	}
	
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	
	method peso() = peso
	
	method sabor() = "chocolate"
	
	method esLibreDeGluten() = false
	
	method recibirMordisco() {
		peso = peso * 0.8
	}
}

object caramelo {
	var peso = 5
	
	method peso() = peso
	
	method precio() = 1
	
	method sabor() = "frutilla"
	
	method esLibreDeGluten() = true
	
	method recibirMordisco() {
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	
	method peso() = peso
	
	method precio() = 2
	
	method sabor() = "naranja"
	
	method esLibreDeGluten() = true
	
	method recibirMordisco() {
		if(peso >= 2) {
			peso = peso * 0.9
		}
	}
}

object oblea {
	var peso = 250
	
	method peso() = peso
	
	method precio() = 5
	
	method sabor() = "vainilla"
	
	method esLibreDeGluten() = false
	
	method recibirMordisco() {
		if(peso > 70) {
			peso = peso * 0.5
		}
		else {
			peso = peso * 0.75
		}
	}
}

object chocolatin {
	var pesoInicial
	var peso
	
	method precio() = pesoInicial * 0.5
	
	method peso() = peso
	
	method sabor() = "chocolate"
	
	method esLibreDeGluten() = false
	
	method pesoInicial(unPeso) {
		pesoInicial = unPeso
		peso = unPeso
	}
	
	method pesoInicial() = pesoInicial
	
	method recibirMordisco() {
		peso = 0.max(peso - 2)
	}
}

object golosinaBaniada {
	var property golosinaDeBase
	var baniado = 4
	
	method peso() = golosinaDeBase.peso() + baniado
	
	method baniado() = baniado
	
	method precio() = golosinaDeBase.precio() + 2
	
	method sabor() = golosinaDeBase.sabor()
	
	method esLibreDeGluten() = golosinaDeBase.esLibreDeGluten()
	
	method recibirMordisco() {
		golosinaDeBase.recibirMordisco()
		baniado = 0.max(baniado - 2)
	}
}

	
object tuttiFrutti {
	var property esLibreDeGluten 
	var cantidadMordidas = 0
	const sabores = ["frutilla", "chocolate", "naranja"]

	method precio() = if(esLibreDeGluten)10 else 7

	method sabor() = sabores.get((cantidadMordidas) % 3)
	
	method peso() = 5

	method recibirMordisco() = cantidadMordidas ++ 
	
}







