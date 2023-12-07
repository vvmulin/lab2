//
//  CardView.swift
//  app
//
//  Created by VLADIMIR on 26.11.2023.
//

import Foundation
import SwiftUI


func getStringDate(date: Date) -> String {
    let dateFormatter = DateFormatter()
    let date_: String
    dateFormatter.dateFormat = "EEEE, dd MMMM"
    dateFormatter.locale = Locale(identifier: "en_US")
    date_ = dateFormatter.string(from: date)
    return date_
}

func getStringTime(date: Date) -> Array<String> {
    let timeFormatter = DateFormatter()
    let time_: String
    let time__: String
    timeFormatter.dateFormat = "hh:mm"
    time_ = timeFormatter.string(from: date)
    timeFormatter.dateFormat = "hh:mm a"
    let newDate = Calendar.current.date(byAdding: .hour, value: 1, to: date)
    time__ = timeFormatter.string(from: newDate!)
    return [time_, time__]
}

struct CardView: View {
    var nearestVisit: Visit
    var baseColor = BaseColor()
    
    var body: some View {
        VStack {
            HStack {
                HStack() {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 58, height: 73)
                      .background(
                        nearestVisit.doctor.image?
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 58, height: 73)
                          .background(Color.white)
                          .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                      )
                    VStack(alignment: .leading) {
                        Text("Dr. " + nearestVisit.doctor.firstName + " " + nearestVisit.doctor.lastName)
                            .fontWeight(.bold)
                            .foregroundColor(baseColor.textPrimaryLight)
                            .font(.headline)
                            .padding(.bottom, 1)
                        Text(nearestVisit.doctor.specialization)
                            .font(.subheadline)
                            .foregroundColor(baseColor.textSecondaryLight)
                    }
                    
                }
                
                Spacer()
                
                Button {} label: {
                    Image("ArrowRight")
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 15)
            .padding(.bottom, 5)
            
            Rectangle()
                .foregroundColor(.white.opacity(0.15))
                .frame(maxHeight: 1)
                .padding(.horizontal, 20)
            
            HStack {
                Spacer()
                Label(getStringDate(date: nearestVisit.date), image: "Calendar")
                    .foregroundColor(baseColor.textPrimaryLight)
                    .font(.footnote)
                Spacer()
                Label(getStringTime(date: nearestVisit.date)[0] +
                    " - " + getStringTime(date: nearestVisit.date)[1], image: "Clock")
                    .foregroundColor(baseColor.textPrimaryLight)
                    .font(.footnote)
                Spacer()
            }
            .padding(15)
            .padding(.bottom, 5)
        }
        .background(baseColor.themePrimary)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
}
