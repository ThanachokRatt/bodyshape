//
//  CurrentActivitiesView.swift
//  bodyShape
//
//  Created by Schweppe on 5/6/2566 BE.
//

import SwiftUI

struct CurrentActivitiesView: View {
    let activity: Activity
    var body: some View{
        RoundedRectangle(cornerRadius:  20)
            .stroke(Color.black , lineWidth: 1)
            .overlay(
                HStack {
                    VStack (alignment: .leading){
                        Image(systemName: activity.activityImage)
                            .padding()
                            .background(lightPurple)
                            .clipShape(Circle())
                        
                        Text(activity.activityName)
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    Spacer()
                }.padding(.horizontal)
            )
            .frame(width: activity.dim, height: activity.dim)
    }
}


struct CurrentActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentActivitiesView(activity: .init(dim: 150,
                                              activityName: "Running",
                                              activityImage: "figure.run"))
    }
}
