//
//  Login.swift
//  Pop Version 1.0
//
//  Created by Viet Anh Doan on 5/21/17.
//  Copyright © 2017 Viet. All rights reserved.
//

import UIKit

class Login: UIViewController {
    
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    var userList = ["apple":"ios","techmaster":"14","viet":"123"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonActionLogin(_ sender: UIButton) {
        if let password = userList[textFieldUserName.text!] {
            if password == textFieldPassword.text {
                print("Successful.")
                let math = self.storyboard?.instantiateViewController(withIdentifier: "math") as! Math
                self.navigationController?.pushViewController(math, animated: true)
            }
            else {
                print("Invalid password.")
            }
        }
        else {
            print("Invalid username.")
        }
    }
    @IBAction func buttonActionUsers(_ sender: UIButton) {
        print(userList)
    }
    @IBAction func buttonActionRegister(_ sender: UIButton) {
        userList[textFieldUserName.text!] = textFieldPassword.text
    }
    
}
