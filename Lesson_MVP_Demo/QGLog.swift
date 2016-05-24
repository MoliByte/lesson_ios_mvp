//
//  QGLog.swift
//  Lesson_MVP_Demo
//
//  Created by 朱佩 on 16/5/24.
//  Copyright © 2016年 Andy zhu. All rights reserved.
//
/***
import Foundation
// 带颜色输出
struct ColorLog {
    // 决定颜色输出的标识
    static let ESCAPE = "\u{001b}["
    // 决定前景色还是背景色
    static let RESET_FG = ESCAPE + "fg;" // Clear any foreground color
    static let RESET_BG = ESCAPE + "bg;" // Clear any background color
    static let RESET = ESCAPE + ";"   // Clear any foreground or background color
    
    // 红色输出
    static func red<T>(object: T) {
        print("\(ESCAPE)fg212,84,0;\(object)\(RESET)")
    }
    
    // 绿色输出
    static func green<T>(object: T) {
        #if DEBUG
            let scanner = NSScanner(string: "0x1f448")
            var result: UInt32 = 0
            scanner.scanHexInt(&result)
            let emoji = "\(Character(UnicodeScalar(result)))"
            print(emoji+"\(ESCAPE)fg38,173,97;\(object)\(RESET)")
        #endif
    }
    
    // 蓝色输出
    static func blue<T>(object: T) {
        #if DEBUG
            print("\(ESCAPE)fg0,0,255;\(object)\(RESET)")
        #endif
    }
    
    //黄色输出
    static func yellow<T>(object: T) {
        #if DEBUG
            print("\(ESCAPE)fg242,196,15;\(object)\(RESET)")
        #endif
    }
    
    //紫色输出
    static func purple<T>(object: T) {
        #if DEBUG
            print("\(ESCAPE)fg255,0,255;\(object)\(RESET)")
        #endif
    }
    
    //青色输出
    static func cyan<T>(object: T) {
        #if DEBUG
            print("\(ESCAPE)fg0,255,255;\(object)\(RESET)")
        #endif
    }
    
    // 打印两个对象分别蓝色和黄色输出
    static func blueAndYellow<T>(obj1:T,obj2:T) {
        #if DEBUG
            print("\(ESCAPE)fg0,0,255;\(obj1)\(RESET)" + "\(ESCAPE)fg255,255,0;\(obj2)\(RESET)")
        #endif
    }
    
    // 亮蓝色输出
    static func lightBlue<T>(obj1:T) {
        #if DEBUG
            let scanner = NSScanner(string: "0x1f449")
            var result: UInt32 = 0
            scanner.scanHexInt(&result)
            let emoji = "\(Character(UnicodeScalar(result)))"
            print(emoji+"\(ESCAPE)fg41,128,185;\(obj1)\(RESET)")
        #endif
    }
}
 
 **/

