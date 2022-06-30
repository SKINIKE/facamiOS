//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by Kwangil Shin on 2022/06/30.
//

import UIKit

class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
