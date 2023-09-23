//
//  ResultView.swift
//  bodyShape
//
//  Created by Schweppe on 5/6/2566 BE.
//

import SwiftUI

struct ResultView: View {
    let selectedWeightUnits = "lb"
    var body: some View {
        VStack  { // TODO: CHANGE THIS VALUE
            VStack (spacing: 0) {
                ResultsTopRow()
                    .padding()
                
                CalendarBarView(dailyData: [.init(day: "Mon",
                                                  percenttage: 0.6,
                                                  amount: 1),
                                            .init(day: "Tue",
                                                  percenttage: 0.3,
                                                  amount: 5),
                                            .init(day: "Wed",
                                                  percenttage: 0.6,
                                                  amount: 1),
                                            .init(day: "Thu",
                                                  percenttage: 0.9,
                                                  amount: 12),
                                            .init(day: "Fri",
                                                  percenttage: 0.3,
                                                  amount: 15)],
                                height: 100,
                                offsetY: -5,
                                seclectedWeight: 13)
            }
            
            VStack(spacing: 20 ){
                MainActivitiesView(activities: [.init(dim: 150,
                                                      activityName: "Running",
                                                      activityImage: "figure.run"),
                                            .init(dim: 150,
                                                      activityName: "Biking",
                                                      activityImage: "figure.outdoor.cycle"),
                                            .init(dim: 150,
                                                      activityName: "Climbing",
                                                      activityImage: "figure.climbing"),
                                            .init(dim: 150,
                                                      activityName: "Skating",
                                                      activityImage: "figure.skating")])
                HStack{
                    Text("Your plan for Decenber 2022")
                    Spacer()
                    Text("1.8")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(selectedWeightUnits)
                }.padding(.horizontal)
            }
        Spacer()
            HeartRateRowView()
            //Continue Button
            Spacer()
            Button(action: {
                print("Button pressed")
            }, label: {
                Text("Continue")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Capsule().fill(Color.black))
                    .padding()
            })
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
