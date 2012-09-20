package Veiculos

class Veiculo {
    
    String placa
    String marca
    String modelo
    String cor
    String numFrota

    static constraints = {
        
        placa blank: false
        placa unique: true
        
    }
}
