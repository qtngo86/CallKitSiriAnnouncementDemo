//
//  AppDelegate.swift
//  CallKitDemo
//
//  Created by Quang Tuan NGO on 2024-05-21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let callManager = CallManager()
    var providerDelegate: ProviderDelegate!
    
    class var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        providerDelegate = ProviderDelegate(callManager: callManager)
        return true
    }
    
    func displayIncomingCall(
        uuid: UUID,
        handle: String,
        hasVideo: Bool = false,
        completion: ((Error?) -> Void)?
    ) {
        providerDelegate.reportIncomingCall(
            uuid: uuid,
            handle: handle,
            hasVideo: hasVideo,
            completion: completion)
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

