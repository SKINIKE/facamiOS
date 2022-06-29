//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by Kwangil Shin on 2022/06/29.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
