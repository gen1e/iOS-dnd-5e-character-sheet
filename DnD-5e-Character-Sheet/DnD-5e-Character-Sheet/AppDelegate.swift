//
//  AppDelegate.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/12/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Deletes everything when I need to reset
//        let realmURL = Realm.Configuration.defaultConfiguration.fileURL!
//        let realmURLs = [
//            realmURL,
//            realmURL.appendingPathExtension("lock"),
//            realmURL.appendingPathExtension("note"),
//            realmURL.appendingPathExtension("management")
//        ]
//        for URL in realmURLs {
//            do {
//                try FileManager.default.removeItem(at: URL)
//            } catch {
//                // handle error
//            }
//        }
        
        let realm = try! Realm()
        
        //let coreStats = CoreStats(value: ["strength": 18, "strengthProf": 1, "dexterity": 12, "dexterityProf": 0, "constitution": 18, "constitutionProf": 1, "intelligence": 10, "intelligenceProf": 0, "wisdom": 11, "wisdomProf": 0, "charisma": 9, "charismaProf": 0])
        //let healthStats = HealthStats(value: ["currentHP": 104, "maxHP": 106, "hitDiceType": "d12", "hitDiceMax": 14, "hitDiceCurr": 13])
        //let skills = Skills(value: ["acrobaticsProf": 0, "animalHandlingProf": 0, "arcanaProf": 0, "athleticsProf": 1, "deceptionProf": 0, "historyProf": 0, "insightProf": 0, "intimidationProf": 1, "investigationProf": 0, "medicineProf": 0, "natureProf": 0, "perceptionProf": 1, "performanceProf": 0, "persuasionProf": 0, "religionProf": 0, "sleightOfHandProf": 0, "stealthProf": 0, "survivalProf": 1])
        let core = CoreStats()
        let health = HealthStats()
        let skill = Skills()
        let testChar = Character(value: ["id" : 0, "characterName": "Press Edit to Start", "coreStats": core, "healthStats": health, "skills": skill])
        
        let characters = realm.objects(Character.self)
        if characters.isEmpty {
            try! realm.write {
                realm.add(testChar)
            }
        }
        
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

