//
//  AppDelegate.swift
//  Gmail UI
//
//  Created by Danish on 08/01/21.
//  Copyright © 2021 Danish. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setRootViewControllerWith(storyboardIdentifier: Storyboard.Name.main, viewControllerIdentifier: Storyboard.identifiers.homeVC)
        
        // Override point for customization after application launch.
        
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


    func setRootViewControllerWith(storyboardIdentifier: String, viewControllerIdentifier: String) {
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: storyboardIdentifier, bundle: nil)
        
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        
        
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        
        
        let navController = UINavigationController.init(rootViewController: viewController)
        
        self.window?.rootViewController = navController
        
        self.window?.makeKeyAndVisible()
        
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
    }
    
}

