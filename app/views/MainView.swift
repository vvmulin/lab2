//
//  MainView.swift
//  app
//
//  Created by VLADIMIR on 26.11.2023.
//

import Foundation
import SwiftUI


struct MainView: View {
    
    var baseColor = BaseColor()
    
    var body: some View {
        
        
        ZStack(alignment: .top) {
                    ScrollView {
                        VStack {
                            HeaderView().padding(.bottom, 10)
                            CardView(nearestVisit: visit).padding(.vertical, 10)
                            SearchView().padding(.vertical, 10)
                            ServicePanelView().padding(.vertical, 10)
                        }
                        .background(baseColor.background)
                        .padding(20)
                    }
                }
            }
    
}
