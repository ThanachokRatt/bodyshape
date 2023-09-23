//
//  DataSummaryView.swift
//  bodyShape
//
//  Created by Schweppe on 3/6/2566 BE.
//

import SwiftUI

struct DataSummaryView: View {
    let arrow: String
    let calories: String
    
    let delta = 10.0
    let percent1 = 0.6
    let percent2 = 0.4
    let peopleImages = [person1,person2,person3,person4,person1,person2]
    let numberPeople: Int
    var body: some View {
        GeometryReader {geometry in
            VStack {
                HStack (spacing: 15){ // First row
                    RoundedRectangle(cornerRadius: 20)
                        .fill(lightPurple)
                        .frame(width: geometry.size.width * percent1 - delta)
                        .overlay(
                            VStack {
                                HStack {
                                    Image(systemName: "fork.knife")
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(.white)
                                .clipShape(Circle())
                                    Text("36%")
                                    Image(systemName: arrow)
                                    
                                }
                                HStack(alignment: .bottom){
                                    Text(calories).font(.title2)
                                        .fontWeight(.bold)
                                    Text("Calories").font(.subheadline)
                                }
                            }
                        )
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black,lineWidth:1)
                        .overlay(
                            VStack{
                                Image(systemName: "figure.walk")
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(lightPurple)
                                    .clipShape(Circle())
                                Text("4.562jkmn")
                                    .font(.title2)
                                    .fontWeight(.bold)
                            }
                        ).frame(width: geometry.size.width * (1-percent1) - delta)
                }
                .frame(height: geometry.size.width * (1-percent1) - delta)
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .frame(width: geometry.size.width * percent2 - delta)
                        .overlay(Text("Start")
                            .foregroundColor(.white)
                            .fontWeight(.bold))
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black,lineWidth:1)
                        .overlay(
                            VStack(alignment: .leading) {
                                Text("Members")
                                    .font(.subheadline)
                                .foregroundColor(.black)
                                .foregroundColor(.white)
                            .fontWeight(.semibold)
                                HStack(spacing: -10){
                                    let extraPeople = min(peopleImages.count,numberPeople)
                                    let circleDim = 45.0
                                    ForEach(0..<extraPeople,id: \.self) {i in
                                        CircleImageView(imageName: peopleImages[i], color: .white, size: circleDim, lineWidth: 1)
                                    }
                                    if peopleImages.count > 2 {
                                        CircleCountView(count: peopleImages.count - extraPeople, size: circleDim, lineWidth: 1, color: .black)
                                    }
                                  
                                }
                            }
                        )
                }
                .frame(height: geometry.size.width * percent2 - delta)
                
            }
        }
    }
}

struct DataSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        DataSummaryView(arrow: "arrow.down", calories: "35.324", numberPeople: 2)
    }
}
