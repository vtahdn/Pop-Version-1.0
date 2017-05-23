//
//  ViewController.swift
//  Pop Version 1.0
//
//  Created by Viet Anh Doan on 5/21/17.
//  Copyright © 2017 Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img.alpha=0
        btn.alpha=0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        let login = self.storyboard?.instantiateViewController(withIdentifier: "lgSb") as! Login
        self.navigationController?.pushViewController(login, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.img.alpha=1
        }, completion: {
            (finished) in UIView.animate(withDuration: 3, animations: {
                self.btn.center=CGPoint(x: self.img.center.x, y: 120)
                self.btn.alpha=1
            })
        })
    }
    
}

