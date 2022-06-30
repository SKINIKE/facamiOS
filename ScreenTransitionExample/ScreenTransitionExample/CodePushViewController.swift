//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by Kwangil Shin on 2022/06/29.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func SendData(name: String)
}

class CodePushViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    //delegate 변수를 사용할때는 반드시 weak를 붙여줘야한다.(안붙이면 강한 순환참조가 발생해서 메모리누수가 발생할수도)
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        //델리게이트를 사용
        self.delegate?.SendData(name: "Gunter")
        self.navigationController?.popViewController(animated: true)
    }
}
