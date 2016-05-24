//
//  UserModel.swift
//  Lesson_MVP_Demo
//
//  Created by 朱佩 on 16/5/24.
//  Copyright © 2016年 Andy zhu. All rights reserved.
//

import Foundation
import Genome
import PureJsonSerializer

class UserModel:  BasicMappable{
    internal var url:String = ""
    internal var action:String = ""
    internal var pageIndex:Int = 0
    
    internal(set) var user_avater:String = ""
    internal(set) var username:String = ""
    internal(set) var password:String?
    internal(set) var email:String = ""
    internal(set) var member_id:Int = 0
    internal(set) var mobile :String = ""
    internal(set) var nickname:String = ""
    internal(set) var realname:String = ""
    internal(set) var gender:Int = 0
    internal(set) var birthday:String = ""
    internal(set) var region:String = ""
    internal(set) var regionNames:String = ""
    internal(set) var skinType:Int = 0
    internal(set) var hasMerchant:Int = 0
    internal(set) var integral:Int = 0
    internal(set) var token:String = ""
    internal(set) var device_token:String = ""
    
    //PureJsonSerializer Referenced for example, Please !
    required init() {}
    static func newInstance(json: Json, context: Context) throws -> Self {
        let map = Map(json: json, context: context)
        let new = self.init()
        try new.sequence(map)
        return new
    }
    func sequence(map: Map) throws {
        try mobile <~ map["mobile"]
        try nickname <~ map["nickname"]
        try username <~ map ["username"]
        try password <~ map["password"]
        try email <~ map["email"]
    }
}