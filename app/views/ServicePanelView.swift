//
//  FourButtonsView.swift
//  app
//
//  Created by VLADIMIR on 29.11.2023.
//

import Foundation
import SwiftUI

var baseColor = BaseColor()

struct ServicePanelView: View {
    var services = ["Covid 19", "Doctor", "Medicine", "Hospital"]
    var body: some View {
        HStack(spacing: 15) {
            ForEach(services, id: \.self) { service in
                Button {} label: {
                    VStack {
                        Image(service)
                            .padding(25)
                            .background(baseColor.themeSecondary)
                            .clipShape(Circle())
                        Text(service)
                            .foregroundColor(baseColor.textSecondaryDark)
                    }
                }
            }
            
        }
        .listStyle(PlainListStyle())
    }
}
