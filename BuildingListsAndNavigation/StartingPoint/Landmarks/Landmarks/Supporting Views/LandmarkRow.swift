//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Bradley Hoffman on 6/5/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                LandmarkRow(landmark: landmarkData[item])
            }
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
