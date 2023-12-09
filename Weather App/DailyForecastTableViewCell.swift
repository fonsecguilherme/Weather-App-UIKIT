//
//  DailyForecastTableViewCell.swift
//  Weather App
//
//  Created by Guilherme Fonseca on 08/12/23.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    static let identifier: String = "DailyForecast"
    
    private lazy var weekdayLabel: UILabel = {
        let label = UILabel()
        label.text = "TER"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var minTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "min 25C"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var maxTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "max 25C"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "rainyAsset")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [weekdayLabel,iconImageView, minTemperatureLabel, maxTemperatureLabel])
        stackView.axis = .horizontal
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .clear
        selectionStyle = .none
        
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            weekdayLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
    }
    
    
    private func setConstraints() {
        stackView.setConstraintsToParent(contentView)
    }
}
