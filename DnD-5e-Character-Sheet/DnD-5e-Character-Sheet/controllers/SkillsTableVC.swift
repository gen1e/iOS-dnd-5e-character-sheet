//
//  SkillsTableVC.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/15/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import UIKit
import RealmSwift

class SkillsTableVC: UITableViewController {
    
    var character: Character?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        let characters = realm.objects(Character.self)
        character = characters.first

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // D&D 5e has a set 18 skills so this is a constant
        return 18
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "skillCell", for: indexPath) as! SkillCellVC
        cell.id = indexPath.row
        
        let p = (character?.getProficiency())!
        
        var smod = 0
        var isProf = 0

        switch indexPath.row {
        case 0:
            cell.skillNameLabel!.text = "Acrobatics"
            smod = (character?.skills?.getAcrobatics(dexMod: (character?.coreStats?.getDexMod())!, prof: p))!
            isProf = (character?.skills?.acrobaticsProf)!
        case 1:
            cell.skillNameLabel!.text = "Animal Handling"
            smod = (character?.skills?.getAnimalHandling(wisMod: (character?.coreStats?.getWisMod())!, prof: p))!
            isProf = (character?.skills?.animalHandlingProf)!
        case 2:
            cell.skillNameLabel!.text = "Arcana"
            smod = (character?.skills?.getArcana(intMod: (character?.coreStats?.getIntMod())!, prof: p))!
            isProf = (character?.skills?.arcanaProf)!
        case 3:
            cell.skillNameLabel!.text = "Athletics"
            smod = (character?.skills?.getAlthletics(strMod: (character?.coreStats?.getStrMod())!, prof: p))!
            isProf = (character?.skills?.athleticsProf)!
        case 4:
            cell.skillNameLabel!.text = "Deception"
            smod = (character?.skills?.getDeception(charMod: (character?.coreStats?.getCharMod())!, prof: p))!
            isProf = (character?.skills?.deceptionProf)!
        case 5:
            cell.skillNameLabel!.text = "History"
            smod = (character?.skills?.getHistory(intMod: (character?.coreStats?.getIntMod())!, prof: p))!
            isProf = (character?.skills?.historyProf)!
        case 6:
            cell.skillNameLabel!.text = "Insight"
            smod = (character?.skills?.getInsight(wisMod: (character?.coreStats?.getWisMod())!, prof: p))!
            isProf = (character?.skills?.insightProf)!
        case 7:
            cell.skillNameLabel!.text = "Intimidation"
            smod = (character?.skills?.getIntimidation(charMod: (character?.coreStats?.getCharMod())!, prof: p))!
            isProf = (character?.skills?.intimidationProf)!
        case 8:
            cell.skillNameLabel!.text = "Investigation"
            smod = (character?.skills?.getInvestigation(intMod: (character?.coreStats?.getIntMod())!, prof: p))!
            isProf = (character?.skills?.investigationProf)!
        case 9:
            cell.skillNameLabel!.text = "Medicine"
            smod = (character?.skills?.getMedicine(wisMod: (character?.coreStats?.getWisMod())!, prof: p))!
            isProf = (character?.skills?.medicineProf)!
        case 10:
            cell.skillNameLabel!.text = "Nature"
            smod = (character?.skills?.getNature(intMod: (character?.coreStats?.getIntMod())!, prof: p))!
            isProf = (character?.skills?.natureProf)!
        case 11:
            cell.skillNameLabel!.text = "Perception"
            smod = (character?.skills?.getPerception(wisMod: (character?.coreStats?.getWisMod())!, prof: p))!
            isProf = (character?.skills?.perceptionProf)!
        case 12:
            cell.skillNameLabel!.text = "Performance"
            smod = (character?.skills?.getPerformance(charMod: (character?.coreStats?.getCharMod())!, prof: p))!
            isProf = (character?.skills?.performanceProf)!
        case 13:
            cell.skillNameLabel!.text = "Persuasion"
            smod = (character?.skills?.getPersuasion(charMod: (character?.coreStats?.getCharMod())!, prof: p))!
            isProf = (character?.skills?.persuasionProf)!
        case 14:
            cell.skillNameLabel!.text = "Religion"
            smod = (character?.skills?.getReligion(intMod: (character?.coreStats?.getIntMod())!, prof: p))!
            isProf = (character?.skills?.religionProf)!
        case 15:
            cell.skillNameLabel!.text = "Sleight of Hand"
            smod = (character?.skills?.getSleightOfHand(dexMod: (character?.coreStats?.getDexMod())!, prof: p))!
            isProf = (character?.skills?.sleightOfHandProf)!
        case 16:
            cell.skillNameLabel!.text = "Stealth"
            smod = (character?.skills?.getStealth(dexMod: (character?.coreStats?.getDexMod())!, prof: p))!
            isProf = (character?.skills?.stealthProf)!
        case 17:
            cell.skillNameLabel!.text = "Survival"
            smod = (character?.skills?.getSurvival(wisMod: (character?.coreStats?.getWisMod())!, prof: p))!
            isProf = (character?.skills?.survivalProf)!
        default:
            print("Something went wrong")
        }
        
        if smod >= 0 {
            cell.skillModLabel!.text = "+ \(smod)"
        }
        else if smod < 0 {
            cell.skillModLabel!.text = "- \(abs(smod))"
        }
        
        if isProf == 1 {
            cell.skillProfSwitch.isOn = true
        } else {
            cell.skillProfSwitch.isOn = false
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
