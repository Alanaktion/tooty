//
//  PostList.swift
//  Tooty
//
//  Created by Alan Hardman on 11/4/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import SwiftUI
import Combine

class TootList: ObservableObject {
    var didChange = PassthroughSubject<Void,Never>()
    @Published var toots = [Toot]() {
        didSet {
            didChange.send(())
        }
    }
    
    init() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            let toot = try! JSONDecoder().decode([Toot].self, from: data)
            DispatchQueue.main.async {
                self.toots = toot
            }
            print("Fetched post list from API")
        }.resume()
    }
    
}
