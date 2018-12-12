//
//  Character.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/12/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import RealmSwift

class Character: Object {
    @objc dynamic var playerName = ""
    @objc dynamic var characterName = ""
    @objc dynamic var level = 0
    @objc dynamic var xp = 0
    @objc dynamic var characterClass = ""
    @objc dynamic var race = ""
    @objc dynamic var alignment = ""
    @objc dynamic var background = ""
    @objc dynamic var speed = 0
    
    @objc dynamic var proficiency = 0
    
    
    
}
