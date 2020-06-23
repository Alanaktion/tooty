//
//  RemoteImage.swift
//  Tooty
//
//  Created by Alan Hardman on 11/4/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import SwiftUI
import Combine

class RemoteImage: ObservableObject {
    var didChange = PassthroughSubject<Data, Never>()
    
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }
    
    init(urlString: String?) {
        if (urlString == nil) {
            return
        }
        
        guard let url = URL(string: urlString!) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}
