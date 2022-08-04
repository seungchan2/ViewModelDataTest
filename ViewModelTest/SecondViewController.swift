//
//  SecondViewController.swift
//  ViewModelTest
//
//  Created by 김승찬 on 2022/08/04.
//

import UIKit

import SnapKit
import Then

class SecondViewController: UIViewController {
    
    
    let button = UIButton().then {
        $0.backgroundColor = .red
    }
    
    let viewModel: CommonViewModel
    
    init(viewModel: CommonViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        
        button.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        button.addTarget(self, action: #selector(pushNext), for: .touchUpInside)
        print(222, viewModel.title)
        // Do any additional setup after loading the view.
    }
    
    @objc func pushNext() {
        let vc = ThirdViewController(viewModel: viewModel)
        
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
}
