
object bonbom {
	var peso = 15
	
	method precio()= 5
	method sabor()= frutilla
	method peso()= peso
	method tieneGluten()=false
	
	method mordisco()  {peso = (peso * 0.8) - 1}
	
	
}


object alfajor {
	var peso = 300
	
	method precio() = 12
	method sabor()= chocolate
	method peso()= peso
	method tieneGluten()=true
	
	method mordisco() {peso = (peso * 0.8)}
}

object caramelo{
	
	var peso = 5
	
	method precio()= 1
	method sabor() = frutilla
	method peso()= peso
	method tieneGluten()= true
	
	method mordisco(){peso = peso-1}
}

object chupetin{
	
	var peso = 7
	
	
	method precio()= 2
	method sabor()= naranja
	method peso()= peso
	method tieneGluten()= true
	
	method mordisco(){
		if (peso > 2) (peso = peso * 0.9)
	}
}

object oblea{
	var peso = 250

	
	method precio()= 5
	method sabor()= vainilla
	method peso()= peso
	method tieneGluten()= false
	
	method mordisco(){
		if (peso > 70) (peso= peso *0.7) 
		else (peso=peso*0.25)
	}
}

object chocolatin{
	var property peso 
	
	method precio()= 0.50 * peso
	method sabor()= chocolate
	method tieneGluten()=true
	
	method mordisco(){peso= peso-2}
}

object golosinaBaniana{
	
	method baniarGolosina(unaGolosina){
		
	}
	method precio(){}
	method sabor(){}
	method peso(){}
	method tieneGluten(){}
}

object pastilla{
	var peso = 5
	var property tieneGluten
	//const sabor = (frutilla, chocolate, naranja)
	
	method precio() = if (not tieneGluten ) 7 else 10
	method peso()= peso
	
	method sabor()
	
}

