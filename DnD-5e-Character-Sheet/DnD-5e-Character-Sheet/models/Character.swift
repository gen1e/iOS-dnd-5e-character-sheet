//
//  Character.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/12/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import RealmSwift

class Character: Object {
    @objc dynamic var id = 0
    @objc dynamic var characterName = ""
    @objc dynamic var level = 0
    @objc dynamic var xp = 0
    @objc dynamic var characterClass = ""
    @objc dynamic var race = ""
    @objc dynamic var alignment = ""
    @objc dynamic var background = ""
    @objc dynamic var speed = 0
    @objc dynamic var ac = 0
    
    
    public func getProficiency() -> Int {
        let lvl = Double(level)
        return Int(((lvl + 7.0)/4.0).rounded(.down))
    }
    
    @objc dynamic var coreStats: CoreStats?
    @objc dynamic var healthStats: HealthStats?
    @objc dynamic var skills: Skills?
    @objc dynamic var spells: Spells?
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    public func getInitiative() -> Int {
        return coreStats!.getDexMod()
    }
    
}
