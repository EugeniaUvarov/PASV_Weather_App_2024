//
//  CityView.swift
//  PASV_Weather_App
//
//  Created by Eugenia Uvarov on 9/26/24.
//

import UIKit

class CityView: UIView {
    
    
    private var cityNameLabel: UILabel = {
        let name = UILabel()
        name.text = "New York"
        name.textColor = .white
        name.font = UIFont.systemFont(ofSize: 18)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    
    private var timeLabel: UILabel = {
        let time = UILabel()
        time.text = "19:52"
        time.font = UIFont.systemFont(ofSize: 12)
        time.textColor = .white
        time.translatesAutoresizingMaskIntoConstraints = false
        return time
        
    }()
    
    
    private var infoLabel: UILabel = {
        let info = UILabel()
        info.text = "Clody"
        info.font = UIFont.systemFont(ofSize: 12)
        info.textColor = .white
        info.translatesAutoresizingMaskIntoConstraints = false
        return info
        
    }()
    
    
    private var tempLabel: UILabel = {
        let temp = UILabel()
        temp.text = "22 C"
        temp.font = UIFont.systemFont(ofSize: 24)
        temp.textColor = .white
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
        
    }()
    
    
    private var secondaryTempLabel: UILabel = {
        let stlabel = UILabel()
        stlabel.text = "H:27C L:21C"
        stlabel.textColor = .white
        stlabel.translatesAutoresizingMaskIntoConstraints = false
        return stlabel
        
    }()
    
    init() {
        super.init(frame: .zero)
        commonInit()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
        
    }
    
    
    private func commonInit() {
        self.backgroundColor = .gray
        layer.cornerRadius = 10
        setupSubViews()
        setupConstraints()
        
        
    }
    
    //dobavite v self
    private func setupSubViews() {
        self.addSubview(cityNameLabel)
        self.addSubview(timeLabel)
        self.addSubview(infoLabel)
        self.addSubview(tempLabel)
        self.addSubview(secondaryTempLabel)
        
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            cityNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            cityNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            
            timeLabel.leadingAnchor.constraint(equalTo: cityNameLabel.leadingAnchor, constant: 0),
            timeLabel.topAnchor.constraint(equalTo: cityNameLabel.bottomAnchor, constant: 4),
            
            infoLabel.leadingAnchor.constraint(equalTo: cityNameLabel.leadingAnchor,constant: 0),
            infoLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4),
            
            tempLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            tempLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 8),
            
            secondaryTempLabel.trailingAnchor.constraint(equalTo: tempLabel.trailingAnchor, constant: 0),
            secondaryTempLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4)
        ])
    }
    
    func setup(model: SearchModel) {
        cityNameLabel.text = model.city
        timeLabel.text = model.time
        infoLabel.text = model.description
        tempLabel.text = String(model.temperature) + "℃"
        secondaryTempLabel.text = "H:\(model.highTemperature)C L:\(model.lowTemperature)C"
    }
}


