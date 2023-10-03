//
//  ViewController.swift
//  Test
//
//  Created by Margels on 02/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(">", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "View Controller 1"
        setUpLayout()
    }
    
    @objc private func buttonAction(sender: UIButton) {
        let vc = ViewController3()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setUpLayout() {
        self.view.addSubview(button)
        setUpConstraints()
    }

    private func setUpConstraints() {
        
        NSLayoutConstraint.activate([
        
            button.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 50)
        
        ])
        
    }

}

