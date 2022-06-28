//
//  SuguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by Kwangil Shin on 2022/06/28.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
