//
//  ViewController.swift
//  TomatoTimer
//
//  Created by Nikita on 17.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var changeModeSwitch: UISwitch = {
        let changeModeSwitch = UISwitch()
        changeModeSwitch.addTarget(self, action: #selector(changeMode), for: .valueChanged)
        return changeModeSwitch
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        style
    }
    
    var style: UIStatusBarStyle = .default {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6

    }
    
    override func loadView() {
        super.loadView()
        view.addSubview(changeModeSwitch)
        setConstraints()
    }
    
    @objc func changeMode() {
        if changeModeSwitch.isOn {
            overrideUserInterfaceStyle = .dark
            style = .lightContent
        } else {
            overrideUserInterfaceStyle = .light
            style = .darkContent
        }
//        setNeedsStatusBarAppearanceUpdate()
    }
    
    private func setConstraints() {
        changeModeSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            changeModeSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeModeSwitch.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

