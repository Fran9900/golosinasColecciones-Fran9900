
object bombon {
	var peso= 15
	method precio()= 5
	method sabor()=frutilla
	method libreGluten()= true
	method mordisco(){
		peso = (peso * 0.8)-1
	}
}

object alfajor {
	var peso= 300
	method precio() = 12
	method sabor()=chocolate
	method libreGluten()= false
	method mordisco(){
		peso = peso * 0.8
	}
}

object caramelo {
	var peso= 5
	method precio() = 1
	method sabor()=frutilla
	method libreGluten()= true
	method mordisco(){
		peso = peso-1
	}
}

object chupetin {
	var peso = 7
	method precio() = 2
	method sabor()=naranja
	method libreGluten()= true
	method mordisco() {
		if(!peso<2){
			peso = peso * 0.4
		}else {
			peso
		}
	}
}

object oblea {
	var peso = 250
	method precio() = 5
	method sabor()=vainilla
	method libreGluten()= false
	method mordisco() {
//		if(peso>70){
//			peso = peso * 0.5 //50% NOSE
//		}else {
//			peso = peso * 0.75 //25/ NOSE
//		}
	peso = peso * if (peso >70) 0.5 else 0.75 //OTRA FORMA DE USAR EL IF
	}
}

object chocolatin {	
	var pesoInicial = 0
	var peso = pesoInicial
	method pesoInicial (ingreso){
		pesoInicial = ingreso
	}
	method precio() = 0.50 * pesoInicial
	method sabor()=chocolate
	method libreGluten()= false
	method mordisco (){
		peso = peso - 2
		}
}
	
object golosinaBaniada {
	method peso(golosina) = 4 + golosina.peso()	
	method precioBase(golosina) = golosina.precio()
	method sabor(golosina)= golosina.sabor()
	method libreGluten(golosina)=golosina.libreGluten()
	method mordisco(golosina){
		golosina.mordisco()
		
	}
}

object vainilla {}
object chocolate {}
object frutilla {}
object naranja{}

object pastilla {
	var libreGluten = true
	const gustos = [vainilla, chocolate, frutilla]
	method sabores() = gustos
	method precio(){
		if (libreGluten){
			return 7
		}else{
			return 10
		}
	}
	method peso()=5
	method configGluten(){
		if(libreGluten){
			libreGluten = false
		}else{
			libreGluten = true
		}
	}
}



//Quedó incomleto hehe