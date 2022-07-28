//
//  ViewController.swift
//  codevc
//
//  Created by João Victor on 28/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    let btn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        title = "Start"
        
        btn.setTitle("Go to VC", for: .normal)
        btn.backgroundColor = .systemGray
        btn.setTitleColor(.white, for: .normal)
        btn.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(tapBtn), for: .touchUpInside)
        
        view.addSubview(btn)
        
    }

    @objc func tapBtn() {
        let rootVc = SecondViewController()
        let vc = UINavigationController(rootViewController: rootVc)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    
}

class SecondViewController: UIViewController {
    
    let btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second View"
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissSelf))
        
        
        btn.setTitle("Go to Second VC", for: .normal)
        btn.backgroundColor = .systemGray
        btn.setTitleColor(.white, for: .normal)
        btn.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(tapBtn), for: .touchUpInside)
        
        view.addSubview(btn)
    }
    
    @objc func tapBtn() {
        let vc = UIViewController()
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "I Love Swift", style: .plain, target: self, action: nil)
        vc.view.backgroundColor = .systemBackground
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func dismissSelf() {
        dismiss(animated: true)
    }
}


