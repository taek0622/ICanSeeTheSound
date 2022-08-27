//
//  ViewController.swift
//  ICanSeeTheSound
//
//  Created by 김민택 on 2022/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    let soundVisualizeSection: UIView = {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 16
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    let soundTitleSection: UIView = {
        $0.layer.cornerRadius = 16
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    let airConditionerLabel: UILabel = {
        $0.text = "air\nconditioner"
        $0.numberOfLines = 0
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let carHornLabel: UILabel = {
        $0.text = "car horn"
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let childrenPlayingLabel: UILabel = {
        $0.text = "children\nplaying"
        $0.numberOfLines = 0
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let dogBarkLabel: UILabel = {
        $0.text = "dog bark"
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let drillingLabel: UILabel = {
        $0.text = "drilling"
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let engineIdlingLabel: UILabel = {
        $0.text = "engine\nidling"
        $0.numberOfLines = 0
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let gunShotLabel: UILabel = {
        $0.text = "gun shot"
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let jackhammerLabel: UILabel = {
        $0.text = "jackhammer"
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let sirenLabel: UILabel = {
        $0.text = "siren"
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let streetMusicLabel: UILabel = {
        $0.text = "street\nmusic"
        $0.numberOfLines = 0
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let soundVisualizeDivider: UIView = {
        $0.backgroundColor = .black
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    let warningSection: UIView = {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 16
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    let warningTitle: UILabel = {
        $0.text = "Warning!!!"
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let warningContent: UILabel = {
        $0.text = "The Car is Coming to you!!!"
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let airConditionerBar: UIView = {
        $0.backgroundColor = .red
        $0.layer.cornerRadius = 16
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(soundVisualizeSection)
        view.addSubview(warningSection)
        
        soundVisualizeSection.addSubview(soundTitleSection)
        soundVisualizeSection.addSubview(soundVisualizeDivider)
        
        soundTitleSection.addSubview(airConditionerLabel)
        soundTitleSection.addSubview(carHornLabel)
        soundTitleSection.addSubview(childrenPlayingLabel)
        soundTitleSection.addSubview(dogBarkLabel)
        soundTitleSection.addSubview(drillingLabel)
        soundTitleSection.addSubview(engineIdlingLabel)
        soundTitleSection.addSubview(gunShotLabel)
        soundTitleSection.addSubview(jackhammerLabel)
        soundTitleSection.addSubview(sirenLabel)
        soundTitleSection.addSubview(streetMusicLabel)
        
        soundVisualizeSection.addSubview(airConditionerBar)
        
        warningSection.addSubview(warningTitle)
        warningSection.addSubview(warningContent)
        
        soundVisualizeSection.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        soundVisualizeSection.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        soundVisualizeSection.bottomAnchor.constraint(equalTo: warningSection.topAnchor, constant: -16).isActive = true
        soundVisualizeSection.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        
        warningSection.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        warningSection.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        warningSection.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        
        soundTitleSection.topAnchor.constraint(equalTo: soundVisualizeSection.topAnchor, constant: 0).isActive = true
        soundTitleSection.leftAnchor.constraint(equalTo: soundVisualizeSection.leftAnchor, constant: 0).isActive = true
        soundTitleSection.bottomAnchor.constraint(equalTo: soundVisualizeSection.bottomAnchor, constant: 0).isActive = true
        soundTitleSection.rightAnchor.constraint(lessThanOrEqualTo: soundVisualizeSection.rightAnchor, constant: 0).isActive = true
        
        airConditionerLabel.topAnchor.constraint(equalTo: soundTitleSection.topAnchor, constant: 16).isActive = true
        airConditionerLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        airConditionerLabel.bottomAnchor.constraint(equalTo: carHornLabel.topAnchor, constant: -16).isActive = true
        airConditionerLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        carHornLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        carHornLabel.bottomAnchor.constraint(equalTo: childrenPlayingLabel.topAnchor, constant: -16).isActive = true
        carHornLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        childrenPlayingLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        childrenPlayingLabel.bottomAnchor.constraint(equalTo: dogBarkLabel.topAnchor, constant: -16).isActive = true
        childrenPlayingLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        dogBarkLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        dogBarkLabel.bottomAnchor.constraint(equalTo: drillingLabel.topAnchor, constant: -16).isActive = true
        dogBarkLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        drillingLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        drillingLabel.bottomAnchor.constraint(equalTo: engineIdlingLabel.topAnchor, constant: -16).isActive = true
        drillingLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        engineIdlingLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        engineIdlingLabel.bottomAnchor.constraint(equalTo: gunShotLabel.topAnchor, constant: -16).isActive = true
        engineIdlingLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        gunShotLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        gunShotLabel.bottomAnchor.constraint(equalTo: jackhammerLabel.topAnchor, constant: -16).isActive = true
        gunShotLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        jackhammerLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        jackhammerLabel.bottomAnchor.constraint(equalTo: sirenLabel.topAnchor, constant: -16).isActive = true
        jackhammerLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        sirenLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        sirenLabel.bottomAnchor.constraint(equalTo: streetMusicLabel.topAnchor, constant: -16).isActive = true
        sirenLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        streetMusicLabel.leftAnchor.constraint(equalTo: soundTitleSection.leftAnchor, constant: 16).isActive = true
        streetMusicLabel.bottomAnchor.constraint(equalTo: soundTitleSection.bottomAnchor, constant: -16).isActive = true
        streetMusicLabel.rightAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: -16).isActive = true
        
        soundVisualizeDivider.frame = CGRect(x: 0, y: 0, width: 100, height: soundVisualizeSection.frame.height)
        soundVisualizeDivider.topAnchor.constraint(equalTo: soundVisualizeSection.topAnchor, constant: 0).isActive = true
        soundVisualizeDivider.leftAnchor.constraint(equalTo: soundTitleSection.rightAnchor, constant: 0).isActive = true
        soundVisualizeDivider.bottomAnchor.constraint(equalTo: soundVisualizeSection.bottomAnchor, constant: 0).isActive = true
        soundVisualizeDivider.rightAnchor.constraint(lessThanOrEqualTo: soundVisualizeSection.rightAnchor, constant: 0).isActive = true
        
        airConditionerBar.leftAnchor.constraint(equalTo: soundVisualizeDivider.rightAnchor, constant: 0).isActive = true
        airConditionerBar.rightAnchor.constraint(equalTo: soundVisualizeSection.rightAnchor, constant: 0).isActive = true
        
        warningTitle.topAnchor.constraint(equalTo: warningSection.topAnchor, constant: 16).isActive = true
        warningTitle.leftAnchor.constraint(equalTo: warningSection.leftAnchor, constant: 16).isActive = true
        warningTitle.bottomAnchor.constraint(lessThanOrEqualTo: warningSection.bottomAnchor, constant: -16).isActive = true
        warningTitle.rightAnchor.constraint(lessThanOrEqualTo: warningSection.rightAnchor, constant: -16).isActive = true
        
        warningContent.topAnchor.constraint(equalTo: warningSection.topAnchor, constant: 16).isActive = true
        warningContent.leftAnchor.constraint(equalTo: warningSection.leftAnchor, constant: 16).isActive = true
        warningContent.bottomAnchor.constraint(equalTo: warningSection.bottomAnchor, constant: -16).isActive = true
        warningContent.rightAnchor.constraint(equalTo: warningSection.rightAnchor, constant: -16).isActive = true
    }


}

