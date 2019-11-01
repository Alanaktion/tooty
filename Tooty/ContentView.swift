//
//  ContentView.swift
//  Tooty
//
//  Created by Alan Hardman on 10/31/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection){
            Text("Timeline")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house" + (selection == 0 ? ".fill" : ""))
                        Text("Timeline")
                    }
                }
                .tag(0)
            Text("Profile")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person" + (selection == 1 ? ".fill" : ""))
                        Text("Profile")
                    }
                }
                .tag(1)
            Text("Notifications")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "bell" + (selection == 2 ? ".fill" : ""))
                        Text("Notifications")
                    }
                }
                .tag(2)
            Text("Search")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
