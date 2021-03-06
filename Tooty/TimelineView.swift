//
//  TimelineView.swift
//  Tooty
//
//  Created by Alan Hardman on 10/31/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import SwiftUI

struct TimelineView: View {
    var toots: [Toot]
    
    @State private var viewIndex = 0

    var body: some View {
        VStack {
            HStack {
                Picker("View", selection: $viewIndex) {
                    Text("Home").tag(0)
                    Text("Local").tag(1)
                    Text("All").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                Button(action: {}) {
                    Image(systemName: "plus")
                }
            }.padding()
            List(toots) { toot in
                TootRow(toot: toot)
            }
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(toots: [
            Toot(
                id: 1,
                date: Date.init(timeIntervalSinceNow: -3600),
                user: User(
                    id: 1, name: "Ken Taylor", handle: "@kentaylor"
                ),
                body: "Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris."
            ),
            Toot(
                id: 2,
                date: Date.init(timeIntervalSinceNow: -7200),
                user: User(
                    id: 1, name: "Ellie Paisley", handle: "@epaisley@mastodon.example"
                ),
                body: "Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula."
            ),
            Toot(
                id: 3,
                date: Date.init(timeIntervalSinceNow: -86400),
                user: User(
                    id: 1, name: "Ellie Paisley", handle: "@epaisley@mastodon.example"
                ),
                body: "Donec fermentum."
            )
        ])
    }
}
