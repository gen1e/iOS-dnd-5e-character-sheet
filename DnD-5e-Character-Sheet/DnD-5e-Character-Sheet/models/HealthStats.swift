//
//  HealthStats.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/12/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import RealmSwift

class HealthStats: Object {
    @objc dynamic var currentHP = 0
    @objc dynamic var maxHP = 0
    @objc dynamic var hitDiceType = ""
    @objc dynamic var hitDiceMax = 0
    @objc dynamic var hitDiceCurr = 0
    @objc dynamic var deathSaves = 0
    @objc dynamic var deathFails = 0
}
