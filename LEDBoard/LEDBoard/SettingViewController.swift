//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by Kwangil Shin on 2022/07/03.
//

import UIKit


protocol LEDBoardSettingDelegate: AnyObject{
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var pupleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    //델리게이트 선언과 초기 글자색, 배경색 초기화
    weak var delegate: LEDBoardSettingDelegate?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    //화면에서 넘겨받은 LED문장
    var ledText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    //기존 화면에 설정되어 있는 값을 들고온다
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: textColor)
        self.changeBackgroundColor(color: backgroundColor)
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.yellowButton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        }else if sender == self.pupleButton{
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        }else{
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton {
            self.changeBackgroundColor(color: .black)
            self.backgroundColor = .black
        }else if sender == self.blueButton{
            self.changeBackgroundColor(color: .blue)
            self.backgroundColor = .blue
        }else{
            self.changeBackgroundColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    
    //저장 클릭 시 델리게이트로 설정값 전달
    @IBAction func tapSaveButton(_ sender: Any) {
        self.delegate?.changedSetting(
            text: self.textField.text,
            textColor: self.textColor,
            backgroundColor: self.backgroundColor
        )
        //네비게이션 컨트롤러(스택구조)로 화면이동을 했었기 때문에 pop하여 이전화면으로 이동한다.
        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(color: UIColor){
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.pupleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    private func changeBackgroundColor(color: UIColor){
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
    }
}
