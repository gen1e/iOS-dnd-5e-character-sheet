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
    
    @objc dynamic var strengthProf = 0
    @objc dynamic var dexterityProf = 0
    @objc dynamic var constitutionProf = 0
    @objc dynamic var intelligenceProf = 0
    @objc dynamic var wisdomProf = 0
    @objc dynamic var charismaProf = 0
    
    private func calcMod(score: Int) -> Int {
        return Int((Double(score - 10) / 2.0).rounded(.down))
    }
    
    public func getStrMod() -> Int {
        return calcMod(score: strength)
    }
    
    public func getStrSave(prof: Int) -> Int {
        return (getStrMod() + (prof * strengthProf))
    }
    
    public func getDexMod() -> Int {
        return calcMod(score: dexterity)
    }
    
    public func getDexSave(prof: Int) -> Int {
        return (getDexMod() + (prof * dexterityProf))
    }
    
    public func getConMod() -> Int {
        return calcMod(score: constitution)
    }
    
    public func getConSave(prof: Int) -> Int {
        return (getConMod() + (prof * constitutionProf))
    }
    
    public func getIntMod() -> Int {
        return calcMod(score: intelligence)
    }
    
    public func getIntSave(prof: Int) -> Int {
        return (getIntMod() + (prof * intelligenceProf))
    }
    
    public func getWisMod() -> Int {
        return calcMod(score: wisdom)
    }
    
    public func getWisSave(prof: Int) -> Int {
        return (getWisMod() + (prof * wisdomProf))
    }
    
    public func getCharMod() -> Int {
        return calcMod(score: charisma)
    }
    
    public func getCharSave(prof: Int) -> Int {
        return (getCharMod() + (prof * charismaProf))
    }
}
