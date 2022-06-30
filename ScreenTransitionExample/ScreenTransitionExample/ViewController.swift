//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by Kwangil Shin on 2022/06/27.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        //최초 생성 시 한번만 동작
        super.viewDidLoad()
        print("ViewController 뷰가 로드 되었다.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 나타날 것이다.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController 뷰가 나타났다.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController 뷰가 사라질 것이다.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController 뷰가 사라졌다.")
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        //as? 뷰컨트롤러 <<이렇게 각 타입에 맞는 뷰컨트롤러를 다운캐스팅? 하게되면 각 컨트롤러에서 정의한 프로퍼티에 접근이 가능하다.(안드로이드의 뷰바인딩이랑 비슷한개념인듯?)
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else {return}
        viewController.name = "Gunter"
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Gunter"
        self.present(viewController, animated: true, completion: nil)
    }
    
    //세그웨이를 실행하기 직전 시스템에 의해 자동으로 실행되는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SuguePushViewController{
            viewController.name = "Gunter"
        }
    }
    
    func SendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

