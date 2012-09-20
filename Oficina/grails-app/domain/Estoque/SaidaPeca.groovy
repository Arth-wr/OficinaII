package Estoque
import Veiculos.Veiculo

class SaidaPeca {
    
    Peca peca
    Veiculo veiculo
    float quantidade
    Date data


    static constraints = {
        
        peca blank: false
        veiculo blank: false
        quantidade blank: false
        data blank: false
        data min: new Date()
        
    }
}
