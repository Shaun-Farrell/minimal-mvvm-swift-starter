//
//  ResultViewController.swift
//  minimal-mvvm-swift-starter
//
//  Created by Shaun Farrell on 12/02/2018.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    lazy var viewModel: ResultViewModel = {
        return ResultViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Setup simple binding
        viewModel.reloadLabelView = { [weak self] () in
            DispatchQueue.main.async {
                let result = self?.viewModel.getFirstResult()
                self?.resultLabel.text = result?.description
            }
        }
        
        viewModel.initFetch()
    }

}

