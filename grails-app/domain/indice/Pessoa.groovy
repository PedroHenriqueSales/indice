package indice

class Pessoa {

	String nome
	Integer idade
	String sexo
	String estadoCivil

    static constraints = {
    	nome blank:false
    	idade blank:false
    	sexo blank:false
    	estadoCivil blank:false
    	sexo(inList: ["Masculino", "Feminino"])
    	estadoCivil(inList: ["Casado", "Solteiro", "Viuvo"])
    	idade (min:0, max:110)
    }
}
