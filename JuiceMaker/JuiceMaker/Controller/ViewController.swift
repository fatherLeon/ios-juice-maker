//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let x = JuiceMaker()
        x.makeJuice(juice: .mangoJuice)
        x.makeJuice(juice: .pineappleJuice)
        x.makeJuice(juice: .kiwiJuice)
    }


}

