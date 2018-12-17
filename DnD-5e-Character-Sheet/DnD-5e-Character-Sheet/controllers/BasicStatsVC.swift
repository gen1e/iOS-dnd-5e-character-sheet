//
//  BasicStatsVC.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/15/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import UIKit
import RealmSwift

class BasicStatsVC: UIViewController {

    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var intitiativeLabel: UILabel!
    @IBOutlet weak var maxHPLabel: UILabel!
    @IBOutlet weak var currHPLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var proficiencyLabel: UILabel!
    @IBOutlet weak var maxHitDiceLabel: UILabel!
    @IBOutlet weak var currHitDiceLabel: UILabel!
    @IBOutlet weak var acLabel: UILabel!
    
    @IBOutlet weak var strStatLabel: UILabel!
    @IBOutlet weak var strModLabel: UILabel!
    @IBOutlet weak var strSaveLabel: UILabel!
    
    @IBOutlet weak var intStatLabel: UILabel!
    @IBOutlet weak var intModLabel: UILabel!
    @IBOutlet weak var intSaveLabel: UILabel!
    
    @IBOutlet weak var conStatLabel: UILabel!
    @IBOutlet weak var conModLabel: UILabel!
    @IBOutlet weak var conSaveLabel: UILabel!
    
    @IBOutlet weak var wisStatLabel: UILabel!
    @IBOutlet weak var wisModLabel: UILabel!
    @IBOutlet weak var wisSaveLabel: UILabel!
    
    @IBOutlet weak var dexStatLabel: UILabel!
    @IBOutlet weak var dexModLabel: UILabel!
    @IBOutlet weak var dexSaveLabel: UILabel!
    
    @IBOutlet weak var charStatLabel: UILabel!
    @IBOutlet weak var charModLabel: UILabel!
    @IBOutlet weak var charSaveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
        
    }
    
    private func updateView() {
        let realm = try! Realm()
        let characters = realm.objects(Character.self)
        let c = characters.first!
        let p = c.getProficiency()
        
        characterNameLabel.text = c.characterName
        subTitleLabel.text = c.race + " " + c.characterClass + " Level " + String(c.level)
        intitiativeLabel.text = String(c.getInitiative())
        maxHPLabel.text = String(c.healthStats!.maxHP)
        currHPLabel.text = String(c.healthStats!.currentHP)
        speedLabel.text = String(c.speed)
        proficiencyLabel.text = String(c.getProficiency())
        maxHitDiceLabel.text = "\(c.healthStats!.hitDiceMax)\(c.healthStats?.hitDiceType ?? "")"
        currHitDiceLabel.text = "\(c.healthStats!.hitDiceCurr)\(c.healthStats?.hitDiceType ?? "")"
        acLabel.text = String(c.ac)
        
        strStatLabel.text = String(c.coreStats!.strength)
        strModLabel.text = modString(mod: c.coreStats!.getStrMod())
        strSaveLabel.text = modString(mod: c.coreStats!.getStrSave(prof: p))
        
        intStatLabel.text = String(c.coreStats!.intelligence)
        intModLabel.text = modString(mod: c.coreStats!.getIntMod())
        intSaveLabel.text = modString(mod: c.coreStats!.getIntSave(prof: p))
        
        conStatLabel.text = String(c.coreStats!.constitution)
        conModLabel.text = modString(mod: c.coreStats!.getConMod())
        conSaveLabel.text = modString(mod: c.coreStats!.getConSave(prof: p))
        
        wisStatLabel.text = String(c.coreStats!.wisdom)
        wisModLabel.text = modString(mod: c.coreStats!.getWisMod())
        wisSaveLabel.text = modString(mod: c.coreStats!.getWisSave(prof: p))
        
        dexStatLabel.text = String(c.coreStats!.dexterity)
        dexModLabel.text = modString(mod: c.coreStats!.getDexMod())
        dexSaveLabel.text = modString(mod: c.coreStats!.getDexSave(prof: p))
        
        charStatLabel.text = String(c.coreStats!.charisma)
        charModLabel.text = modString(mod: c.coreStats!.getCharMod())
        charSaveLabel.text = modString(mod: c.coreStats!.getCharSave(prof: p))
    }
    
    private func modString(mod: Int) -> String {
        if mod >= 0 {
            return "+ \(mod)"
        }
        else if mod < 0 {
            return "- \(abs(mod))"
        }
        return ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
