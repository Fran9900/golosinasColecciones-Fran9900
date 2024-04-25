import golosinas.*

object mariano {
	const listaCompra = []
	
	method comprar(golosina) {
		listaCompra.add(golosina)
	}

	method preciosCuidados() {
		 listaCompra.all({golosinaIterador => golosinaIterador.precio() < 10})
	}
	
	method golosinaSabor(sabor) {
		 listaCompra.find({golosinaIterador => golosinaIterador.sabor()==sabor})
	}
	
	method hayGolosinaSinTacc() =
		return listaCompra.any({golosinaIterador=>golosinaIterador.libreGluten()})
//		return not listaCompra.all({golosinaIterador=>golosinaIterador.libreGluten()})      ES LO MISMO PERO INVERSO PORQUE SI
	
	method probarGolosinas() =
		 listaCompra.forEach({golosinaIterador=>golosinaIterador.mordisco()})
		
	method golosinasDeSabor(sabor) =
		 listaCompra.filter({golosinaIterador=>golosinaIterador.sabor() == sabor})
		
	method pesoTotal() =
		 listaCompra.sum({golosinaIterador=>golosinaIterador.peso()})
	
	method sabores(){
		const sabores = #{}
		listaCompra.forEach{g => sabores.addAll(g.sabor())}
		return sabores
	}
}
