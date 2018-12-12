//
//  Character.swift
//  DnD-5e-Character-Sheet
//
//  Created by student on 12/12/18.
//  Copyright © 2018 Regina Locicero. All rights reserved.
//

import Foundation
import RealmSwift

class Character: Object {
    @objc dynamic var characterName = ""
    @objc dynamic var playerName = ""
}
