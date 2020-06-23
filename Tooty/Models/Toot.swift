//
//  Toot.swift
//  Tooty
//
//  Created by Alan Hardman on 10/31/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import SwiftUI

struct Toot: Hashable, Identifiable, Codable {
    let id: Int
    let date: Date
    let user: User
    let body: String
}
