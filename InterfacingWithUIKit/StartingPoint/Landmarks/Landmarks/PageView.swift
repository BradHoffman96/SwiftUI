//
//  PageView.swift
//  Landmarks
//
//  Created by Bradley Hoffman on 6/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View> : View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
        }
        
    }
}

#if DEBUG
struct PageView_Previews : PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3/2, contentMode: .fit)
    }
}
#endif
