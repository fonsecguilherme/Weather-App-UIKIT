//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Guilherme Fonseca on 05/12/23.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "HourlyForecast"
    
    /* como eu criei uma subclasse de UICollectionViewCell,
     preciso fazer um overrideno init método da classe mãe
     e não esquecer de chamar o super pra não quebrar a
     implementação da classe mãe */
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        //contentview é onde deve ficar o conteúdo da célula
        contentView.backgroundColor = .green
    }
    
    // só é utilizado se a gente fosse usar a nossa célula via storyboard, meio que não tem utilidade aqui
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
