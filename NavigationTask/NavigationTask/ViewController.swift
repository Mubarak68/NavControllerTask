//
//  ViewController.swift
//  NavigationTask
//
//  Created by Mubarak Aloraifan on 29/02/2024.
//

import UIKit
import SnapKit
class MainViewController: UIViewController {
    let detailsButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        
        detailsButton.setTitle("Show Details", for: .normal)
        detailsButton.backgroundColor = .systemBlue
        detailsButton.layer.cornerRadius = 10

        
        view.addSubview(detailsButton)
        detailsButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
        detailsButton.addTarget(self, action: #selector(navigateButtonTapped), for: .touchUpInside)
    }

    @objc func navigateButtonTapped() {

        let secondVC = DetailsViewController()
        secondVC.recivedMessege = "Welcome to Details View!🤖"
            self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

