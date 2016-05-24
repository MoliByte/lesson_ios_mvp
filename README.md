# lesson_ios_mvp
初学ios,先前是学Android,觉得原理应该差不多

1.iphone下的管理工具pod,Android 下的管理以及构建工具gradle

2.ios下swift的代理类似java下的接口

3.发送请求->处理业务逻辑(Model)->代理回调(Present)->处理UI(View)


Something about Pod 
1.->$project_path/touch Podfile

2.pod install

3.编辑 $project_name/Info.plist 
    <!--https=>http security policy ignore-->
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
    </dict>
