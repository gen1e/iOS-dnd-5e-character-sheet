//
//  Skills.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/12/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import RealmSwift

class Skills: Object {
    @objc dynamic var acrobaticsProf = 0
    @objc dynamic var animalHandlingProf = 0
    @objc dynamic var arcanaProf = 0
    @objc dynamic var athleticsProf = 0
    @objc dynamic var deceptionProf = 0
    @objc dynamic var historyProf = 0
    @objc dynamic var insightProf = 0
    @objc dynamic var intimidationProf = 0
    @objc dynamic var investigationProf = 0
    @objc dynamic var medicineProf = 0
    @objc dynamic var natureProf = 0
    @objc dynamic var perceptionProf = 0
    @objc dynamic var performanceProf = 0
    @objc dynamic var persuasionProf = 0
    @objc dynamic var religionProf = 0
    @objc dynamic var sleightOfHandProf = 0
    @objc dynamic var stealthProf = 0
    @objc dynamic var survivalProf = 0
    
    // MARK: - Strength based skills
    public func getAlthletics(strMod: Int, prof: Int) -> Int {
        return strMod + (prof * athleticsProf)
    }
    
    // MARK: - Dexterity based skills
    public func getAcrobatics(dexMod: Int, prof: Int) -> Int {
        return dexMod + (prof * acrobaticsProf)
    }
    
    public func getSleightOfHand(dexMod: Int, prof: Int) -> Int {
        return dexMod + (prof * sleightOfHandProf)
    }
    
    public func getStealth(dexMod: Int, prof: Int) -> Int {
        return dexMod + (prof * stealthProf)
    }
    
    // MARK: - Intelligence based skills
    public func getArcana(intMod: Int, prof: Int) -> Int {
        return intMod + (prof * arcanaProf)
    }
    
    public func getHistory(intMod: Int, prof: Int) -> Int {
        return intMod + (prof * historyProf)
    }
    
    public func getInvestigation(intMod: Int, prof: Int) -> Int {
        return intMod + (prof * investigationProf)
    }
    
    public func getNature(intMod: Int, prof: Int) -> Int {
        return intMod + (prof * natureProf)
    }
    
    public func getReligion(intMod: Int, prof: Int) -> Int {
        return intMod + (prof * religionProf)
    }
    
    // MARK: - Wisdom based skills
    public func getAnimalHandling(wisMod: Int, prof: Int) -> Int {
        return wisMod + (prof * animalHandlingProf)
    }
    
    public func getInsight(wisMod: Int, prof: Int) -> Int {
        return wisMod + (prof * insightProf)
    }
    
    public func getMedicine(wisMod: Int, prof: Int) -> Int {
        return wisMod + (prof * medicineProf)
    }
    
    public func getPerception(wisMod: Int, prof: Int) -> Int {
        return wisMod + (prof * perceptionProf)
    }
    
    public func getSurvival(wisMod: Int, prof: Int) -> Int {
        return wisMod + (prof * survivalProf)
    }
    
    // MARK: - Charisma based skills
    public func getDeception(charMod: Int, prof: Int) -> Int {
        return charMod + (prof * deceptionProf)
    }
    
    public func getIntimidation(charMod: Int, prof: Int) -> Int {
        return charMod + (prof * intimidationProf)
    }
    
    public func getPerformance(charMod: Int, prof: Int) -> Int {
        return charMod + (prof * performanceProf)
    }
    
    public func getPersuasion(charMod: Int, prof: Int) -> Int {
        return charMod + (prof * persuasionProf)
    }
}
