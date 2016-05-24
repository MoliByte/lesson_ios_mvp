//
//  ViewController.swift
//  Lesson_MVP_Demo
//
//  Created by 朱佩 on 16/5/24.
//  Copyright © 2016年 Andy zhu. All rights reserved.
//

import UIKit
import QorumLogs

class ViewController: UIViewController ,
        UserLoginDelegate,UIAlertViewDelegate{

    //user login button
    @IBOutlet weak var loginBtn: UIButton!
    //user login password
    @IBOutlet weak var password: UITextField!
    //user login usename
    
    @IBOutlet weak var username: UITextField!
    
    var model:UserModel = UserModel()
    var alertDelegate:UIAlertViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //yeah,I am going to login the demo app
        
        //QorumLogs.onlyShowThisFile(self)
        
        alertDelegate = self //init the delegate
        username.text = "18017113199"
        password.text = "111111"
        
    }
    
    func loginByUser(model: UserModel) {
//       Login successfully,u will get the information of current user
//        print("current user's nickname is \(model.nickname)")
        QL2("current user's nickname is \(model.nickname)")
    
    }
    
    @IBAction func loginEvent(sender:AnyObject){
        let usernameTxt = username.text;
        let passwordTxt = password.text;
        loginSkinRunWith(usernameTxt!, password: passwordTxt!)
    }
    
    func loginSkinRunWith(username:String,password:String){
        let model:UserModel = UserModel()
        let loginpresenter:LoginPresent = LoginPresent(delegate: self);
        model.url = "http://v33.api.skinrun.me/member?client=2&version=2"
        model.action = "login"
        model.device_token = "device_token"
        model.username = username
        model.password = password
        loginpresenter.loginTask(model)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

