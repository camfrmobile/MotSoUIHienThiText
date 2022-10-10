//
//  ViewController.swift
//  MotSoUIHienThiText
//
//  Created by Trần Văn Cam on 04/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    // Khởi tạo các UI
    // UILabel: chỉ để hiển thị chuỗi, có thể hiển thị trên nhiều dòng, không hỗ trợ cuộn
    let textLabel: UILabel = {
        let label = UILabel() // Khởi tạo UILabel
        label.text = "Mặc dù bạn có thể viết các chương trình Java của mình trong một trình soạn thảo văn bản đơn giản, nhưng một IDE Java với các công cụ hữu ích sẽ làm tăng đáng kể hiệu quả của bạn." // Hiển trị text
        /*label.text = """
Mặc dù bạn có thể viết các chương trình Java
 của mình trong một trình soạn thảo văn bản đơn giản,
 nhưng một IDE Java với các công cụ hữu ích sẽ
 làm tăng đáng kể hiệu quả của bạn.
""" // Hiển trị text
         */
        label.textColor = .green
        label.font = .systemFont(ofSize: 16, weight: .bold) // set font size cho label
        label.textAlignment = .center // Căn lề text
        label.backgroundColor = .yellow // Màu background
        label.numberOfLines = 0 // Số dòng tối đa của Label, nếu set là 0: số dòng tối đa là vô hạn, tự động theo độ dài text
        return label
    } ()
    
    
    // UITẽtField: Có thể hiển thị, có thể nhập vào, nhung chỉ trên 1 dòng
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.text = "234425" // set text
        textField.textColor = .blue
        textField.backgroundColor = .yellow
        textField.textAlignment = .left
        textField.placeholder = "Nhập password !!!" // Chữ mờ
        textField.isSecureTextEntry = true // tự động biến đổi ký tự thành dấu chấm
        return textField
    } ()
    
    
    // UITextView: Có thể hiển, cũng có thể nhập vào, trên nhiều dòng, có thể cuộn (scroll)
    // không có placeholder
    let contentTextView: UITextView = {
        let textView = UITextView()
        textView.text = """
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
        
    }
"""
        textView.textColor = .blue
        textView.backgroundColor = .yellow.withAlphaComponent(0.5) // Set màu với độ đậm 0.5 so với màu gốc
        textView.textAlignment = .left
        textView.isSecureTextEntry = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupUI()
        
    }
    
    func setupUI() {
        view.addSubview(textLabel)
        // set kích thước nên set sau khi view đã được load. nếu set trước khởi tạo thì view chưa khởi tạo
        textLabel.frame = .init(x: 20, y: 50, width: 200, height: 50)
        textLabel.center.x = view.center.x // căn giữa từ trái sang phải
        
        view.addSubview(passwordTextField)
        passwordTextField.frame = .init(x: textLabel.frame.minX, y: 200, width: 200, height: 50)
        
        view.addSubview(contentTextView)
        contentTextView.frame = .init(x: 0, y: 0, width: 400, height: 200)
        contentTextView.center = view.center
    }

}

