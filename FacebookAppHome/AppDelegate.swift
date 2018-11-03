//
//  AppDelegate.swift
//  FacebookAppHome
//
//  Created by Nick Swift on 10/31/18.
//  Copyright © 2018 Nick Swift. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = SpringBoardCollectionViewController()
    window?.makeKeyAndVisible()
    
    return true
  }

}

