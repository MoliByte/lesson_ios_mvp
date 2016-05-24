//
//  BaseModel.swift
//  Lesson_MVP_Demo
//
//  Created by 朱佩 on 16/5/24.
//  Copyright © 2016年 Andy zhu. All rights reserved.
//

import Foundation
public class BaseModel:NSObject{
    public var url:String?;
    public var action:String?;
    public var pageIndex:Int?;
    
    override init() {
        super.init()
    }
    
    init(withDict:[String : AnyObject]) {
        super.init()
        self.setValuesForKeysWithDictionary(withDict)
    }
}