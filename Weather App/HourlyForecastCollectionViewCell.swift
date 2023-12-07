//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Guilherme Fonseca on 05/12/23.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "HourlyForecast"
    
    private lazy var stackView: UIStackView = {
        let stackview = UIStackView(arrangedSubviews: ([hourLabel, iconImageView, temperatureLabel]))
        stackview.axis = .vertical
        stackview.isLayoutMarginsRelativeArrangement = true
        stackview.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackview.spacing = 4
        stackview.layer.borderWidth = 1
        stackview.layer.borderColor = UIColor.contrastColor?.cgColor
        stackview.layer.cornerRadius = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
                               
    }()
    
    private lazy var hourLabel: UILabel = {
        let label = UILabel()
        label.text = "13:00"
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.textColor = UIColor.contrastColor
        label.textAlignment = .center
        label .translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sunAsset")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "25°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor.contrastColor
        label.textAlignment = .center
        label .translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    /* como eu criei uma subclasse de UICollectionViewCell,
     preciso fazer um overrideno init método da classe mãe
     e não esquecer de chamar o super pra não quebrar a
     implementação da classe mãe */
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
        
        //contentview é onde deve ficar o conteúdo da célula
//        contentView.backgroundColor = .green
    }
    
    // só é utilizado se a gente fosse usar a nossa célula via storyboard, meio que não tem utilidade aqui
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        setHierarchy()
        setConstraints()
    }
    private func setHierarchy(){
        contentView.addSubview(stackView)
    }
    private func setConstraints(){
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            iconImageView.heightAnchor.constraint(equalToConstant: 33),
        
        ])
    }
}
