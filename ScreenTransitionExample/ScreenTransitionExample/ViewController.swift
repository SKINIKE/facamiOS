//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by Kwangil Shin on 2022/06/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else {return}
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

