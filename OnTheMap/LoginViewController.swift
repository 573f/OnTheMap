//
//  ViewController.swift
//  OnTheMap
//
//  Created by Stephen Skubik-Peplaski on 7/10/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorTextField: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginUdacityUser(sender: AnyObject) {
    }

    @IBAction func registerUdacityAccount(sender: AnyObject) {
    }
}

