//
//  URLImage.swift
//  Tooty
//
//  Created by Alan Hardman on 10/31/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import SwiftUI
import Nuke

struct URLImage: View {
    var image: UIImage

    var body: some View {
        Image(uiImage: image)
    }

    init(urlString: String) {
        // TODO: default to placeholder
        image = UIImage()

        let url = URL.init(string: urlString) ?? nil
        if (url == nil) {
            return
        }

        ImagePipeline.shared.loadImage(
            with: url!,
            progress: { response, completed, _ in
//                if let response = response {
//                    image = response?.image
//                }
            },
            completion: { result in
                print("image load completed")
            }
        )
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(urlString: "https://placehold.it/250x250")
    }
}
