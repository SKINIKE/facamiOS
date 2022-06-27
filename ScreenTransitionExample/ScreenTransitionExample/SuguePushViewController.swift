//
//  SuguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by Kwangil Shin on 2022/06/27.
//

import UIKit

class SuguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        //이전화면으로 돌아갈 때
        self.navigationController?.popViewController(animated: true)
        //루트화면으로 돌아갈 때
//        self.navigationController?.popToRootViewController(animated: true)
    }
}
