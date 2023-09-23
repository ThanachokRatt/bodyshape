//
//  WelcomeMessageView.swift
//  bodyShape
//
//  Created by Schweppe on 3/6/2566 BE.
//

import SwiftUI

struct WelcomeMessageView: View {
    let userName: String
    var body: some View {
        VStack (alignment: .leading, spacing: 10 ){
            HStack {
                Text("Hi,")
                Text(userName)
                    .fontWeight(.bold)
            }.font(.largeTitle)
            Text("Your boards looks so good")
                .font(.title3)
                .frame(width: screenWidth / 2 , alignment: .leading)
            
        }
    }
}

struct WelcomeMessageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMessageView(userName: "Emily")
    }
}
