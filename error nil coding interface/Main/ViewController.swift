//
//  ViewController.swift
//  error nil coding interface
//
//  Created by Pavel Barto on 22.03.2024.
//

import UIKit

 

class ViewController: UIViewController {
    
    //    lazy var enterButton: UIButton = {
    //        let btn = UIButton(primaryAction: btnAction)
    //        btn.frame = CGRect(x: 15, y: 525, width: 364, height: 50)
    //        btn.setTitle("Войти", for: .normal)
    //        btn.setTitleColor(.systemBlue, for: .normal)
    //        btn.layer.cornerRadius = 25
    //        btn.backgroundColor = .white
    //        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
    //
    //        return btn
    //    }()
    //
    //    let btnAction: UIAction = UIAction { btn in
    //           present(GreetingScreen, animated: true)
    //        }
    var nameField = UITextField()
    var surnameField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        //view.backgroundColor = UIColor(hue: 205, saturation: 89, brightness: 29, alpha: 1)
        
        
        let enterButton = UIButton()
        enterButton.frame = CGRect(x: 15, y: 525, width: 364, height: 50)
        enterButton.setTitle("Войти", for: .normal)
        enterButton.setTitleColor(.systemBlue, for: .normal)
        enterButton.layer.cornerRadius = 25
        enterButton.backgroundColor = .white
        enterButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        enterButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        
         
        nameField.frame = CGRect(x: 15, y: 359, width: 364, height: 50)
        nameField.placeholder = "Имя"
        nameField.layer.cornerRadius = 25
        nameField.backgroundColor = .white
        nameField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 1))
        nameField.leftViewMode = .always
        
         
        surnameField.frame = CGRect(x: 15, y: 430, width: 364, height: 50)
        surnameField.placeholder = "Фамилия"
        surnameField.layer.cornerRadius = 25
        surnameField.backgroundColor = .white
        surnameField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 1))
        surnameField.leftViewMode = .always

 
        let authLabel = UILabel()
        authLabel.frame = CGRect(x: 33, y: 222, width: 201, height: 36)
        authLabel.text = "Авторизация"
        authLabel.textColor = .white
        authLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
        let registerLabel = UILabel()
        registerLabel.frame = CGRect(x: view.frame.width - 246, y: 591, width: 105, height: 19)
        registerLabel.text = "Регистрация"
        registerLabel.textColor = .white
        registerLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        let passLabel = UILabel()
        passLabel.frame = CGRect(x: view.frame.width - 264, y: 790, width: 133, height: 19)
        passLabel.text = "Забыли пароль?"
        passLabel.textColor = .white
        passLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        let loginTextView = UITextView()
        loginTextView.frame = CGRect(x: 25, y: 260, width: 364, height: 50)
        loginTextView.text = "Пожалуйста, введите ваши данные для регистрации"
        loginTextView.backgroundColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        loginTextView.textColor = .white
        //loginTextView.font = UIFont.boldSystemFont(ofSize: 16)
        loginTextView.font = UIFont(name: "Futura-Medium", size: 16)
        
        
        
        view.addSubview(nameField)
        view.addSubview(surnameField)
        view.addSubview(enterButton)
        view.addSubview(authLabel)
        view.addSubview(loginTextView)
        view.addSubview(registerLabel)
        view.addSubview(passLabel)
        
        
        
    }
    
    @objc func didTapButton(){
       // let storyboard = UIStoryboard(name: "GreetingScreen", bundle: nil)
        let vc = GreetingScreen()
          

        vc.greetingMessage.text = (nameField.text ?? "-") + " " + (surnameField.text ?? "-")
        present(vc, animated: true)
        
    }
    
}
