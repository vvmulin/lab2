//
//  SearchView.swift
//  app
//
//  Created by VLADIMIR on 29.11.2023.
//

import Foundation
import SwiftUI


struct SearchView: View {
    @State var searchStr = "Search doctor or health issue"
    var baseColor = BaseColor()
    
    var body: some View {
        HStack {
            Button {} label: {
                Image("Search")
                    .padding(.horizontal, 15)
                    .padding(.vertical, 15)
            }
            TextField(searchStr, text: $searchStr)
                .foregroundColor(baseColor.textSecondaryDark)
            
            Spacer()
        }
        .background(baseColor.themeSecondary)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
