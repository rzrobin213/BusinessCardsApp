//
//  AppDelegate.swift
//  Hackathon_Submission
//
//  Created by Reza Madhavan on 4/20/19.
//  Copyright © 2019 Reza Madhavan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let defaults = UserDefaults.standard

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        //defaults
        defaults.register(defaults: [
            UserDefaultKeys.id.rawValue: -1,
            UserDefaultKeys.name.rawValue: "First Last",
            UserDefaultKeys.phone.rawValue: "123-456-7890",
            UserDefaultKeys.email.rawValue: "email@email.com",
            UserDefaultKeys.company.rawValue: "Company Name",
            UserDefaultKeys.code.rawValue: "CODE12",
            UserDefaultKeys.imgURL.rawValue: "www.image.com",
            UserDefaultKeys.position.rawValue: "Position",
            UserDefaultKeys.website.rawValue: "mywebsite.com"
            ])
        
        let mainTabBarController = MainTabBarViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: mainTabBarController )
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

