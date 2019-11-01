//
//  User.swift
//  Tooty
//
//  Created by Alan Hardman on 10/31/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import Foundation

struct User: Hashable, Identifiable {
    var id: Int
    var name: String
    var handle: String
    var avatarUrl: String?
}
