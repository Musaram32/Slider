//
//  ViewController.swift
//  Slider
//
//  Created by Aram Martirosyan on 14.05.22.
//

import UIKit

class ViewController: UIViewController {

    var titleLabel: UILabel!
    var sliderTitle: UILabel!
    var sliderTitle2: UILabel!
    var sliderTitle3: UILabel!
    var sliderTitle4: UILabel!
    var slider: UISlider!
    var slider2: UISlider!
    var slider3: UISlider!
    var slider4: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTitleLabel()
        initSliderTitle()
        initSliderTitle2()
        initSliderTitle3()
        initSliderTitle4()
        initSlider()
        initSlider2()
        initSlider3()
        initSlider4()
        constructHierarchies()
        activateConstraints()
    }
    
    @objc func scaleChanged(sender: UISlider) {
        self.titleLabel.font = UIFont.systemFont(ofSize: CGFloat(slider.value * 100))
    }
    
    @objc func colorChanged(sender: UISlider) {
        let redColor = CGFloat(slider2.value)
        let greenColor = CGFloat(slider3.value)
        let blueColor = CGFloat(slider4.value)
        
        self.titleLabel.textColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
}

extension ViewController {
    private func initTitleLabel() {
        titleLabel = UILabel()
        titleLabel.text = "0 - 255"
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSliderTitle() {
        sliderTitle = UILabel()
        sliderTitle.text = "Font Scale"
        sliderTitle.font = .systemFont(ofSize: 25, weight: .bold)
        
        sliderTitle.textColor = .black
        sliderTitle.textAlignment = .center
        sliderTitle.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSliderTitle2() {
        sliderTitle2 = UILabel()
        sliderTitle2.text = "Red"
        sliderTitle2.font = .systemFont(ofSize: 25, weight: .bold)
        sliderTitle2.textColor = .black
        sliderTitle2.textAlignment = .center
        sliderTitle2.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSliderTitle3() {
        sliderTitle3 = UILabel()
        sliderTitle3.text = "Green"
        sliderTitle3.font = .systemFont(ofSize: 25, weight: .bold)
        sliderTitle3.textColor = .black
        sliderTitle3.textAlignment = .center
        sliderTitle3.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSliderTitle4() {
        sliderTitle4 = UILabel()
        sliderTitle4.text = "Blue"
        sliderTitle4.font = .systemFont(ofSize: 25, weight: .bold)
        sliderTitle4.textColor = .black
        sliderTitle4.textAlignment = .center
        sliderTitle4.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSlider() {
        slider = UISlider()
        slider.addTarget(self, action: #selector(scaleChanged), for: .valueChanged)
        slider.thumbTintColor = .white
        slider.maximumTrackTintColor = .black
        slider.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSlider2() {
        slider2 = UISlider()
        slider2.addTarget(self, action: #selector(colorChanged),
                         for: .valueChanged)
        slider2.thumbTintColor = .white
        slider2.maximumTrackTintColor = .black
        slider2.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSlider3() {
        slider3 = UISlider()
        slider3.thumbTintColor = .white
        slider3.addTarget(self, action: #selector(colorChanged),
                         for: .valueChanged)
        slider3.maximumTrackTintColor = .black
        slider3.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSlider4() {
        slider4 = UISlider()
        slider4.thumbTintColor = .white
        slider4.addTarget(self, action: #selector(colorChanged),
                         for: .valueChanged)
        slider4.maximumTrackTintColor = .black
        slider4.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func constructHierarchies() {
        view.addSubview(titleLabel)
        view.addSubview(sliderTitle)
        view.addSubview(sliderTitle2)
        view.addSubview(sliderTitle3)
        view.addSubview(sliderTitle4)
        view.addSubview(slider)
        view.addSubview(slider2)
        view.addSubview(slider3)
        view.addSubview(slider4)
    }
    
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalToConstant: 200),
            
            sliderTitle.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            sliderTitle.leadingAnchor.constraint(equalTo: slider.leadingAnchor),

            sliderTitle2.leadingAnchor.constraint(equalTo: slider2.leadingAnchor),
            sliderTitle2.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: 25),

            sliderTitle3.leadingAnchor.constraint(equalTo: slider3.leadingAnchor),
            sliderTitle3.topAnchor.constraint(equalTo: slider2.bottomAnchor, constant: 30),

            sliderTitle4.leadingAnchor.constraint(equalTo: slider4.leadingAnchor),
            sliderTitle4.topAnchor.constraint(equalTo: slider3.bottomAnchor,constant: 30),
            
            slider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slider.widthAnchor.constraint(equalToConstant: 255),
            slider.topAnchor.constraint(equalTo: sliderTitle.bottomAnchor,constant: 30),
            
            slider2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slider2.widthAnchor.constraint(equalToConstant: 255),
            slider2.topAnchor.constraint(equalTo: sliderTitle2.bottomAnchor, constant: 30),
            
            slider3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slider3.widthAnchor.constraint(equalToConstant: 255),
            slider3.topAnchor.constraint(equalTo: sliderTitle3.bottomAnchor, constant: 30),
            
            slider4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slider4.widthAnchor.constraint(equalToConstant: 255),
            slider4.topAnchor.constraint(equalTo: sliderTitle4.bottomAnchor, constant: 30),
        ])
    }
}


