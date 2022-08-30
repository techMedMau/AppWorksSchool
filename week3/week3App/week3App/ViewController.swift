//
//  ViewController.swift
//  week3App
//
//  Created by Maureen Chang on 2022/8/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var checkField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var account: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var correctAccount = "appworks_school@gmail.com"
    var correctPassword = "1234"
    var isLogin = true;
    
    @IBAction func clickButton(_ sender: UIButton) {
        guard let acc = account.text, !acc.isEmpty else {
            showError("Account should not be empty.")
            return
        }
        guard let pwd = password.text, !pwd.isEmpty else {
            showError("Password should not be empty.")
            return
        }
        
        if isLogin {
            if acc != correctAccount || pwd != correctPassword {
                showError("Login fail")
            } else {
                let alert = UIAlertController(title: "Successfully login", message: ":>", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            }
        } else {
            guard let checkPwd = checkField.text, !checkPwd.isEmpty else {
                showError("Check password should not be empty.")
                return
            }
            
            if pwd != checkPwd {
                showError("Singup fail")
            } else {
                let alert = UIAlertController(title: "Successfully signup", message: "Please go back to login!", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: {action in
                })
                alert.addAction(action)
                present(alert, animated: true)
            }
        }
    }
    
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            disableCheck()
            isLogin = true
        } else {
            checkField.isEnabled = true
            checkField.backgroundColor = .white
            checkLabel.textColor = .black
            isLogin = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.setiOS12Layout(tintColor: .black)
        disableCheck()
    }
    
    func disableCheck() {
        checkField.isEnabled = false
        checkField.backgroundColor = .darkGray
        checkLabel.textColor = .gray
    }
    
    func showError(_ str: String) {
        let alert = UIAlertController(title: "Error", message: str, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {action in
        })
        alert.addAction(action)
        present(alert, animated: true)
    }
}

extension UISegmentedControl {
    
    func setiOS12Layout(tintColor: UIColor) {
        
        if #available(iOS 13, *) {
            
             let background = UIImage(color: .clear, size: CGSize(width: 1, height: 32))
             let divider = UIImage(color: tintColor, size: CGSize(width: 1, height: 32))
             self.setBackgroundImage(background, for: .normal, barMetrics: .default)
             self.setBackgroundImage(divider, for: .selected, barMetrics: .default)
             self.setDividerImage(divider, forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
             self.layer.borderWidth = 1
             self.layer.borderColor = tintColor.cgColor
             self.setTitleTextAttributes([.foregroundColor: tintColor], for: .normal)
             self.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        } else {
            self.tintColor = tintColor
        }
    }
}

extension UIImage {
    
    convenience init(color: UIColor, size: CGSize) {
        UIGraphicsBeginImageContextWithOptions(size, false, 1)
        color.set()
        let context = UIGraphicsGetCurrentContext()!
        context.fill(CGRect(origin: .zero, size: size))
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.init(data: image.pngData()!)!
    }
}

