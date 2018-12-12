//
//  Spells.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/12/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import RealmSwift

class Spells: Object {
    @objc dynamic var spellsaveDC = 0
    @objc dynamic var spellAttkBonus = 0
}
