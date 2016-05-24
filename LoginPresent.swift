//
//  LoginPresent.swift
//  Lesson_MVP_Demo
//
//  Created by 朱佩 on 16/5/24.
//  Copyright © 2016年 Andy zhu. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

public class LoginPresent{
    var delegate:UserLoginDelegate
    init(delegate:UserLoginDelegate){
        self.delegate = delegate
    }
    
    func loginTask(model:UserModel)->Void{
//        print("\(model.url)")
//        print("\(model.action)")
        let parameters = [
            "action": model.action as String,
            "page":String(model.pageIndex)
        ]
        
        let plainString = model.username + ":"+model.password!
        
        let plainData = plainString.dataUsingEncoding(NSUTF8StringEncoding)
        
        let base64String = plainData?.base64EncodedStringWithOptions(.Encoding64CharacterLineLength)
        
        let header = [
            "Authorization": "Base "+base64String!
        ]
        
        print(header)
        
        Alamofire.request(.POST, model.url, parameters: parameters, encoding: .JSON, headers: header).responseJSON(completionHandler: handlerResponse)
        //Alamofire.request(NSURLRequest()).response
    }
    
    //处理返回结果回调
    func handlerResponse(response:Response<AnyObject, NSError>) -> Void{
//        print(response.result.value)
        var model:UserModel? = UserModel()
        if let hasResult = response.result.value{
            var json = JSON(hasResult)
            //var json = JSON(value)
            print("mobile is \(json["data"]["mobile"])")
            print("message is\t \(json["message"])")
            
            let dict:Dictionary? = json["data"].dictionaryObject
            
            print("dict is \(dict)")
            if let _ = dict{
                model = try? UserModel(js: dict!)
            }
            
        }
        //model!.setValuesForKeysWithDictionary(dict!)
        self.delegate.loginByUser(model!)
        
    }
    
    
}