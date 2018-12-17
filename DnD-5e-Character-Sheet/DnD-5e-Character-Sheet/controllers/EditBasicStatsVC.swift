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
    
    @IBAction func saveChangesClicked(_ sender: Any) {
        let realm = try! Realm()
        let characters = realm.objects(Character.self)
        
        if !characters.isEmpty {
            // Then we want to update the character we have
            let c = characters.first!
            print("Trying to save")
            try! realm.write {
                c.characterName = characterNameField.text!
                c.race = raceField.text!
                c.characterClass = classField.text!
                c.level = Int(lvlField.text!)!
                c.speed = Int(speedField.text!)!
                c.ac = Int(acField.text!)!
                c.healthStats!.maxHP = Int(maxHPField.text!)!
                c.healthStats!.currentHP = Int(currHPField.text!)!
                c.healthStats!.hitDiceMax = Int(maxHDField.text!)!
                c.healthStats!.hitDiceCurr = Int(currHDField.text!)!
                c.healthStats!.hitDiceType = hdtypeField.text!
                
                c.coreStats!.strength = Int(strField.text!)!
                c.coreStats!.intelligence = Int(intField.text!)!
                c.coreStats!.constitution = Int(conField.text!)!
                c.coreStats!.wisdom = Int(wisField.text!)!
                c.coreStats!.dexterity = Int(dexField.text!)!
                c.coreStats!.charisma = Int(charField.text!)!
                
                c.coreStats!.strengthProf = profToStoreRealm(prof: strProfSwitch.isOn)
                c.coreStats!.intelligenceProf = profToStoreRealm(prof: intProfSwitch.isOn)
                c.coreStats!.constitutionProf = profToStoreRealm(prof: conProfSwitch.isOn)
                c.coreStats!.wisdomProf = profToStoreRealm(prof: wisProfSwitch.isOn)
                c.coreStats!.dexterityProf = profToStoreRealm(prof: dexProfSwitch.isOn)
                c.coreStats!.charismaProf = profToStoreRealm(prof: charProfSwitch.isOn)
            }
            let characters = realm.objects(Character.self)
            print(characters.first!)
        }
    }
    
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
    
    private func profToStoreRealm(prof: Bool) -> Int {
        if prof {
            return 1
        }
        else {
            return 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("Navigating")
    }*/

}
