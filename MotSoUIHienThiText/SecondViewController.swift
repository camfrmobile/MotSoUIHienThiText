//
//  SecondViewController.swift
//  MotSoUIHienThiText
//
//  Created by Trần Văn Cam on 04/10/2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    // tham chiếu sang UILabel
    // outlet sẽ luôn trên cùng sau đó đến các biến, sau đó đến hàm hệ thống, sau đó đến hàm tự tạo
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray
        
        topLabel.textColor = .black
    }
    


}
