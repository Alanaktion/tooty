//
//  TootRow.swift
//  Tooty
//
//  Created by Alan Hardman on 10/31/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import SwiftUI

struct TootRow: View {
    var toot: Toot

    var body: some View {
        HStack(alignment: .top) {
            Image("missing")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 50, height: 50)
                .clipped()
                .cornerRadius(5)
            VStack(alignment: .leading) {
                HStack {
                    Text(toot.user.name)
                        .font(.headline)
                        .lineLimit(1)
                    Text(toot.user.handle)
                        .foregroundColor(Color.gray)
                        .lineLimit(1)
                    Spacer()
                    Text(toot.date.timeAgoShort())
                        .font(.footnote)
                }
                Text(toot.text)
            }
        }
    }
}

struct TootRow_Previews: PreviewProvider {
    static var previews: some View {
        TootRow(toot: Toot(
            id: 1,
            date: Date.init(timeIntervalSinceNow: -86400 * 14),
            user: User(
                id: 1, name: "June Whitely", handle: "@junewhitely@mastodon.example"
            ),
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        ))
    }
}
