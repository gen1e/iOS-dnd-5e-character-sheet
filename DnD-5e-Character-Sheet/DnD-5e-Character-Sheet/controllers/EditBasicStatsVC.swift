//
//  EditBasicStatsVC.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/16/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import UIKit
import RealmSwift

class EditBasicStatsVC: UIViewController {

    @IBOutlet weak var characterNameField: UITextField!
    @IBOutlet weak var raceField: UITextField!
    @IBOutlet weak var classField: UITextField!
    @IBOutlet weak var lvlField: UITextField!
    @IBOutlet weak var speedField: UITextField!
    @IBOutlet weak var acField: UITextField!
    @IBOutlet weak var maxHPField: UITextField!
    @IBOutlet weak var currHPField: UITextField!
    @IBOutlet weak var maxHDField: UITextField!
    @IBOutlet weak var currHDField: UITextField!
    @IBOutlet weak var hdtypeField: UITextField!
    
    @IBOutlet weak var strField: UITextField!
    @IBOutlet weak var strProfSwitch: UISwitch!
    
    @IBOutlet weak var intField: UITextField!
    @IBOutlet weak var intProfSwitch: UISwitch!
    
    @IBOutlet weak var conField: UITextField!
    @IBOutlet weak var conProfSwitch: UISwitch!
    
    @IBOutlet weak var wisField: UITextField!
    @IBOutlet weak var wisProfSwitch: UISwitch!
    
    @IBOutlet weak var dexField: UITextField!
    @IBOutlet weak var dexProfSwitch: UISwitch!
    
    @IBOutlet weak var charField: UITextField!
    @IBOutlet weak var charProfSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let realm = try! Realm()
        let characters = realm.objects(Character.self)
        
        if !characters.isEmpty {
            // If it's not empty then there is already a character so fill in the fields with what is already displayed
            let c = characters.first!
            
            characterNameField.text = c.characterName
            raceField.text = c.race
            classField.text = c.characterClass
            lvlField.text = String(c.level)
            speedField.text = String(c.speed)
            acField.text = String(c.ac)
            maxHPField.text = String(c.healthStats!.maxHP)
            currHPField.text = String(c.healthStats!.currentHP)
            maxHDField.text = String(c.healthStats!.hitDiceMax)
            currHDField.text = String(c.healthStats!.hitDiceCurr)
            hdtypeField.text = String(c.healthStats!.hitDiceType)
            
            strField.text = String(c.coreStats!.strength)
            intField.text = String(c.coreStats!.intelligence)
            conField.text = String(c.coreStats!.constitution)
            wisField.text = String(c.coreStats!.wisdom)
            dexField.text = String(c.coreStats!.dexterity)
            charField.text = String(c.coreStats!.charisma)
            
            strProfSwitch.isOn = isProficient(prof: c.coreStats!.strengthProf)
            intProfSwitch.isOn = isProficient(prof: c.coreStats!.intelligenceProf)
            conProfSwitch.isOn = isProficient(prof: c.coreStats!.constitutionProf)
            wisProfSwitch.isOn = isProficient(prof: c.coreStats!.wisdomProf)
            dexProfSwitch.isOn = isProficient(prof: c.coreStats!.dexterityProf)
            charProfSwitch.isOn = isProficient(prof: c.coreStats!.charismaProf)
        }
    }
    
    private func isProficient(prof: Int) -> Bool {
        if prof == 1 {
            return true
        }
        else {
            return false
        }
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
