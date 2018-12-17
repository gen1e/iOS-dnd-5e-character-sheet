//
//  EditBasicStatsVC.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/16/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import UIKit

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

        // Do any additional setup after loading the view.
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
