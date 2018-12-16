//
//  SkillCellVC.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/16/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import UIKit
import RealmSwift

class SkillCellVC: UITableViewCell {

    var id: Int?
    @IBOutlet weak var skillNameLabel: UILabel!
    @IBOutlet weak var skillModLabel: UILabel!
    @IBOutlet weak var skillProfSwitch: UISwitch!
    
    @IBAction func profChanged(_ sender: Any) {
        let realm = try! Realm()
        let characters = realm.objects(Character.self)
        let c = characters.first
        let skills = (c?.skills)!
        let p = (c?.getProficiency())!
        
        
        try! realm.write {
            switch id {
            case 0:
                skills.acrobaticsProf = opposite(prof: skills.acrobaticsProf)
                changeModLabel(smod: (skills.getAcrobatics(dexMod: (c?.coreStats?.getDexMod())!, prof: p)))
            case 1:
                skills.animalHandlingProf = opposite(prof: skills.animalHandlingProf)
                changeModLabel(smod: (skills.getAnimalHandling(wisMod: (c?.coreStats?.getWisMod())!, prof: p)))
            case 2:
                skills.arcanaProf = opposite(prof: skills.arcanaProf)
                changeModLabel(smod: (skills.getArcana(intMod: (c?.coreStats?.getIntMod())!, prof: p)))
            case 3:
                skills.athleticsProf = opposite(prof: skills.athleticsProf)
                changeModLabel(smod: (skills.getAlthletics(strMod: (c?.coreStats?.getStrMod())!, prof: p)))
            case 4:
                skills.deceptionProf = opposite(prof: skills.deceptionProf)
                changeModLabel(smod: (skills.getDeception(charMod: (c?.coreStats?.getCharMod())!, prof: p)))
            case 5:
                skills.historyProf = opposite(prof: skills.historyProf)
                changeModLabel(smod: (skills.getHistory(intMod: (c?.coreStats?.getIntMod())!, prof: p)))
            case 6:
                skills.insightProf = opposite(prof: skills.insightProf)
                changeModLabel(smod: (skills.getInsight(wisMod: (c?.coreStats?.getWisMod())!, prof: p)))
            case 7:
                skills.intimidationProf = opposite(prof: skills.intimidationProf)
                changeModLabel(smod: (skills.getIntimidation(charMod: (c?.coreStats?.getCharMod())!, prof: p)))
            case 8:
                skills.investigationProf = opposite(prof: skills.investigationProf)
                changeModLabel(smod: (skills.getInvestigation(intMod: (c?.coreStats?.getIntMod())!, prof: p)))
            case 9:
                skills.medicineProf = opposite(prof: skills.medicineProf)
                changeModLabel(smod: (skills.getMedicine(wisMod: (c?.coreStats?.getWisMod())!, prof: p)))
            case 10:
                skills.natureProf = opposite(prof: skills.natureProf)
                changeModLabel(smod: (skills.getNature(intMod: (c?.coreStats?.getIntMod())!, prof: p)))
            case 11:
                skills.perceptionProf = opposite(prof: skills.perceptionProf)
                changeModLabel(smod: (skills.getPerception(wisMod: (c?.coreStats?.getWisMod())!, prof: p)))
            case 12:
                skills.performanceProf = opposite(prof: skills.performanceProf)
                changeModLabel(smod: (skills.getPerformance(charMod: (c?.coreStats?.getCharMod())!, prof: p)))
            case 13:
                skills.persuasionProf = opposite(prof: skills.persuasionProf)
                changeModLabel(smod: (skills.getPersuasion(charMod: (c?.coreStats?.getCharMod())!, prof: p)))
            case 14:
                skills.religionProf = opposite(prof: skills.religionProf)
                changeModLabel(smod: (skills.getReligion(intMod: (c?.coreStats?.getIntMod())!, prof: p)))
            case 15:
                skills.sleightOfHandProf = opposite(prof: skills.sleightOfHandProf)
                changeModLabel(smod: (skills.getSleightOfHand(dexMod: (c?.coreStats?.getDexMod())!, prof: p)))
            case 16:
                skills.stealthProf = opposite(prof: skills.stealthProf)
                changeModLabel(smod: (skills.getStealth(dexMod: (c?.coreStats?.getDexMod())!, prof: p)))
            case 17:
                skills.survivalProf = opposite(prof: skills.survivalProf)
                changeModLabel(smod: (skills.getSurvival(wisMod: (c?.coreStats?.getWisMod())!, prof: p)))
            default:
                print("Something went wrong")
            }
        }
    }
    
    private func opposite(prof: Int) -> Int {
        if prof == 0 {
            return 1
        }
        else {
            return 0
        }
    }
    
    private func changeModLabel(smod: Int) {
        if smod >= 0 {
            skillModLabel!.text = "+ \(smod)"
        }
        else if smod < 0 {
            skillModLabel!.text = "- \(abs(smod))"
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
