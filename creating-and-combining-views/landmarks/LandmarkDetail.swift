//
//  ContentView.swift
//  landmarks
//
//  Created by Bradley Hoffman on 6/3/19.
//  Copyright © 2019 Create. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.bold)
                    .color(.green)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                        Spacer()
                        Text("California")
                    }
                }
                .padding()
            
                Spacer()
            }
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
#endif
