//
//  CoreStats.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/12/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import RealmSwift

class CoreStats: Object {
    @objc dynamic var strength = 0
    @objc dynamic var dexterity = 0
    @objc dynamic var constitution = 0
    @objc dynamic var intelligence = 0
    @objc dynamic var wisdom = 0
    @objc dynamic var charisma = 0
    
    private func calcMod(score: Int) -> Int {
        return Int((Double(score - 10) / 2.0).rounded(.down))
    }
    
    public func getStrMod() -> Int {
        return calcMod(score: strength)
    }
    
    public func getDexMod() -> Int {
        return calcMod(score: dexterity)
    }
    
    public func getConMod() -> Int {
        return calcMod(score: constitution)
    }
    
    public func getIntMod() -> Int {
        return calcMod(score: intelligence)
    }
    
    public func getWisMod() -> Int {
        return calcMod(score: wisdom)
    }
    
    public func getCharMod() -> Int {
        return calcMod(score: charisma)
    }
}
