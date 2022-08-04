//
//  FirstViewController.swift
//  ViewModelTest
//
//  Created by 김승찬 on 2022/08/04.
//

import UIKit

import SnapKit
import Then

class FirstViewController: UIViewController {
    
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
        
        viewModel.title = "12312312"
        viewModel.text = "레전드"
   
    }
    
    @objc func pushNext() {
        let vc = SecondViewController(viewModel: viewModel)
        
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
}
