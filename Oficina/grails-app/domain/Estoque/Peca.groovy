package Estoque

class Peca {

    String descricao
    String referencia
    String marca
    float quantidade
    float quantMinima
    float valorCompra
    String local

    String toString(){"${descricao} Marca: ${marca} Referência: ${referencia}"}

    static constraints = {
        
        descricao blank: false
        descricao unique: true
        referecia unique: true
        quantidade blank: false     
        quantMinima blank: false
        
    }
}
