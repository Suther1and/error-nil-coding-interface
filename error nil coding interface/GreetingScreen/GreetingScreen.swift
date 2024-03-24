//
//  GreetingScreen.swift
//  error nil coding interface
//
//  Created by Pavel Barto on 24.03.2024.
//

import Foundation
import UIKit

class GreetingScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var greetingMessage = UILabel()
        greetingMessage.frame = CGRect(x: 15, y: 250, width: 364, height: 100)
        greetingMessage.text = "\(userName) \(userSurname)"
        greetingMessage.textColor = .white
        greetingMessage.backgroundColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        greetingMessage.layer.cornerRadius = 50
 
        view.addSubview(greetingMessage)
        
    }
    
    
    
}

