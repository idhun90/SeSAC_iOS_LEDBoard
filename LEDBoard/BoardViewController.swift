//
//  BoardViewController.swift
//  project07.06
//
//  Created by 이도헌 on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var userLable: UILabel!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var subView: UIView!
    
    //아울렛컬렉션
    @IBOutlet var buttonList: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designView()
        designButton(textColorButton, buttonTitle: "확인", color: .systemGray6)
        designButton(sendButton, buttonTitle: "입력", color: .systemGray6)
        designTextField()
        //todayStudyCollection()
        
        
    }
    
    func designView() {
        subView.layer.cornerRadius = 4
    }
    
    
    func designTextField() { //()함수 호출 연산자
        
        userTextField.placeholder = "내용을 작성해주세요."
        userTextField.attributedPlaceholder = NSAttributedString(string: userTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        userTextField.backgroundColor = .white
        userTextField.keyboardType = .emailAddress
        userTextField.clearButtonMode = UITextField.ViewMode.whileEditing // 생략 가능 .whileEditing
        
    }
    
    
    func designButton(_ buttonName: UIButton, buttonTitle: String, color: UIColor) {
        
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(buttonTitle, for: .highlighted)
        buttonName.layer.backgroundColor = UIColor.blue.cgColor
        buttonName.backgroundColor = color
        //sendButton.layer.backgroundColor = UIColor.blue.cgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 1
        buttonName.setTitleColor(.black, for: .normal)
        buttonName.setTitleColor(.gray, for: .highlighted)
        
    }
    
    func todayStudyCollection() {
        // 1. 반복문
        let buttonArray: [UIButton] = [sendButton, textColorButton] // 빈배열일 가능성이 있어서 옵셔널 체이닝이 되었지만, 타입을 명시해주면 옵셔녈 체이닝이 없어진다.
        
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
        
        // 2. 아웃렛 컬렉션
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
    }
    @IBAction func clickedSendButton(_ sender: UIButton) {
        
        
        guard let userTextFieldText = userTextField.text else {return}
        userLable.text = userTextFieldText
        print(userLable.text!)
        userLable.numberOfLines = 0 // 주어진 줄 수에서 최대치 사용
        
        
    }
    
    @IBAction func tabedView(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        subView.isHidden ? (subView.isHidden = false) : (subView.isHidden = true)
        
    }
    
    //위 메소드의 연결 관계 다 끊고 Any 타입으로 액션 메소드를 생성해 다른 타입의 UI 요소를 추가하면 모두 같은 동작을 할 수 있도록 설정할 수 있다.
    //Any 타입으로 설정하면 타입 종류와 상관없이 액션 대상을 추가할 수 있다.
    @IBAction func keyboardDismiss(_ sender: Any) {
        view.endEditing(true)
    }
    
    // DidEndOnExit 이벤트로 설정하니 리턴키를 누르면 키보드가 내려간다.
    @IBAction func returnKeyboard(_ sender: UITextField) {
        print("return키 누름")
        userLable.text = userTextField.text
        
    }
}
