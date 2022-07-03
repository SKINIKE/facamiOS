//
//  ViewController.swift
//  LEDBoard
//
//  Created by Kwangil Shin on 2022/07/01.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

    @IBOutlet weak var contentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentLabel.textColor = .yellow
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
            //세팅화면으로 갈때 지금 화면에 있는 값들을 가져간다
            settingViewController.ledText = self.contentLabel.text
            settingViewController.textColor = self.contentLabel.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black //옵셔널이라서 기본값 블랙세팅
        }
    }
    
    //LEDBoardSettingDelegate에 잇는 메소드를 화면에서도 정의
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        //옵셔널 값이므로 옵셔널 바인딩을 해준다
        if let text = text {
            self.contentLabel.text = text
        }
        self.contentLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

