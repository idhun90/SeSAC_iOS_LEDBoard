
//
//  AppDelegate.swift
//  project07.06
//
//  Created by 이도헌 on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // 런치스크린이 실행될 때 작동되는 코드
        // 5초 지연
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        //음악, 유튜브 -> 사용자가 프리미엄 결제했으면, 영상 그대로 플레이, 아니라면 일시정지
        //음악
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        //액티브 상태로 돌아온 것
        //결제 유도 팝업창 띄우기 유튜브
        //카카오톡 암호 입력 화면 처리
        //금융 화면을 안 보이게 처리
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

