//
//  Math.swift
//  Pop Version 1.0
//
//  Created by Viet Anh Doan on 5/23/17.
//  Copyright © 2017 Viet. All rights reserved.
//

import UIKit

class Math: UIViewController {

    @IBOutlet weak var labelRight: UILabel!
    @IBOutlet weak var labelWrong: UILabel!
    @IBOutlet weak var label1stNumber: UILabel!
    @IBOutlet weak var label2ndNumber: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    var rsR:Int=0, rsW:Int=0, sum:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initData() {
        let random1 = Int(arc4random_uniform(4)) + 1
        let random2 = Int(arc4random_uniform(4)) + 1
        print("\(random1) \(random2)")
        label1stNumber.text=String(random1)
        label2ndNumber.text=String(random2)
        sum = random1 + random2
        let rs6 = Int(arc4random_uniform(6))
        if rs6==0 {
            button1.setTitle(String(sum), for: .normal)
            button2.setTitle(String(random1), for: .normal)
            button3.setTitle(String(random2), for: .normal)
        }
        else if rs6==1 {
            button1.setTitle(String(sum), for: .normal)
            button3.setTitle(String(random1), for: .normal)
            button2.setTitle(String(random2), for: .normal)
        }
        else if rs6==2 {
            button2.setTitle(String(sum), for: .normal)
            button1.setTitle(String(random1), for: .normal)
            button3.setTitle(String(random2), for: .normal)
        }
        else if rs6==3 {
            button2.setTitle(String(sum), for: .normal)
            button3.setTitle(String(random1), for: .normal)
            button1.setTitle(String(random2), for: .normal)
        }
        else if rs6==4 {
            button3.setTitle(String(sum), for: .normal)
            button1.setTitle(String(random1), for: .normal)
            button2.setTitle(String(random2), for: .normal)
        }
        else {
            button3.setTitle(String(sum), for: .normal)
            button2.setTitle(String(random1), for: .normal)
            button1.setTitle(String(random2), for: .normal)
        }
    }
    
    @IBAction func buttonActionTUI(_ sender: UIButton) {
        if sender.titleLabel?.text == String(sum) {
            rsR += 1
            labelRight.text = "Right : \(rsR)"
        }
        else {
            rsW += 1
            labelWrong.text = "Wrong : \(rsW)"
        }
        initData()
    }
}
