//
//  GreetingScreen.swift
//  error nil coding interface
//
//  Created by Pavel Barto on 24.03.2024.
//

import Foundation
import UIKit

class GreetingScreen: UIViewController {
    
    var greetingMessage = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        greetingMessage.textAlignment = .center
        greetingMessage.font = UIFont.boldSystemFont(ofSize: 30)
        greetingMessage.textContainerInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        greetingMessage.frame = CGRect(x: 15, y: 250, width: 364, height: 100)
        greetingMessage.textColor = .white
        greetingMessage.backgroundColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        greetingMessage.layer.cornerRadius = 50
        
        var welcomeMessage = UILabel()
        welcomeMessage.frame = CGRect(x: 15, y: 170, width: 364, height: 100)
        welcomeMessage.text = "Welcome, "
        welcomeMessage.textColor = .black
        welcomeMessage.font = UIFont.boldSystemFont(ofSize: 25)
        welcomeMessage.textAlignment = .center
 
        view.addSubview(greetingMessage)
        view.addSubview(welcomeMessage)

    }
    
    
    
}

