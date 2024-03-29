//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Srinivas on 19/09/19.
//  Copyright © 2019 Srinivasan Rajendran. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let proxyAppearance = UINavigationBar.appearance()
        // Override point for customization after application launch.
        proxyAppearance.barTintColor = UIColor(displayP3Red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0) // rgba(44, 62, 80,1.0)
        proxyAppearance.tintColor = .white//UIColor.init(displayP3Red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
        proxyAppearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]//UIColor.init(displayP3Red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)]
        proxyAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        if #available(iOS 13.0, *) {
            ios13NewUI(proxyAppearance: proxyAppearance)
        }
        self.setUpDefaultsSettings()
        
        return true
    }
    
    
    private func setUpDefaultsSettings(){
        let defaults = UserDefaults.standard
        guard defaults.value(forKey: "unit") != nil else{
            defaults.set(Unit.fahrenheit.rawValue, forKey: "unit")
            return
        }
    }
//
    @available(iOS 13.0, *) func ios13NewUI(proxyAppearance:UINavigationBar){
        let scrollEdgeAppearance =  UINavigationBarAppearance()
        scrollEdgeAppearance.backgroundColor = UIColor(displayP3Red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)

        let compactAppearance = UINavigationBarAppearance()
        compactAppearance.backgroundColor = UIColor(displayP3Red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)

        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.backgroundColor = UIColor(displayP3Red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)

        proxyAppearance.scrollEdgeAppearance = scrollEdgeAppearance
        proxyAppearance.compactAppearance = compactAppearance
        proxyAppearance.standardAppearance = standardAppearance
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

