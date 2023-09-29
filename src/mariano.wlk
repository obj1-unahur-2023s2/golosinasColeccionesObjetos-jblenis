import golosinas.*

object mariano {
	const golosinas =[]

	method comprar(unaGolosina) {golosinas.add(unaGolosina)}
	
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = golosinas.size()
	
	method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
	
	method probarGolosinas() = golosinas.forEach( {g => g.recibirMordisco()})
	
	method hayGolosinaSinTACC() = golosinas.any({g => g.esLibreDeGluten()})
	
	method preciosCuidados() = golosinas.all({g => g.precio() <= 10})
	
	method golosinaDeSabor(unSabor) =golosinas.find({g => g.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) = golosinas.filter({g => g.sabor() == unSabor})
	
	method sabores() {
		const listaSabores = [] 
		golosinas.forEach({ g => listaSabores.add(g.sabor())})
		return listaSabores
	}
	
	method golosinaMasCara() = golosinas.max({ g => g.precio() })
	
	method pesoGolosinas() = golosinas.sum({ g => g.peso() })
	
}
