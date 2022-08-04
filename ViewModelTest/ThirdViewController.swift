//
//  ThirdViewController.swift
//  ViewModelTest
//
//  Created by 김승찬 on 2022/08/04.
//

import UIKit

class ThirdViewController: UIViewController {
    
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
        print(333,viewModel.title)
        print(333, viewModel.text)
        // Do any additional setup after loading the view.
    }
}
