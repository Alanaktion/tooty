//
//  Toot.swift
//  Tooty
//
//  Created by Alan Hardman on 10/31/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import Foundation

struct Toot: Hashable, Identifiable {
    var id: Int
    var date: Date
    var user: User
    var text: String
}
