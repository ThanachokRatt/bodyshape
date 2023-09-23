//
//  Splash.swift
//  bodyShape
//
//  Created by Schweppe on 4/6/2566 BE.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        ZStack {
            bodyShape.background(viewModel: BackgroundViewModel(backg: .lightPurple))
            
            VStack {
                TopRowofSpalashView()
                Image(bikeImage)
                    .resizable()
                    .scaledToFit()
                Text("Discover How To Shape the Body")
                    .font(.system(size: 48,weight: .black,design: .serif))
                    .padding(.horizontal)
                LastRowOfSplashView()
                
            }
        }
    }
}
struct  ArrowInCircle: View{
    var body: some View{
        Image(systemName: "arrow.forward")
            .fontWeight(.bold)
            .imageScale(.large)
            .padding(3)
            .scaleEffect(y: 0.8)
            .offset(x: 6)
            .overlay(
                ZStack{
                    Circle()
                        .offset(x: 1)
                    Image(systemName: "arrow.forward")
                        .fontWeight(.bold)
                        .imageScale(.large)
                        .foregroundColor(lightGreen)
                        .offset(x: -2)
                        .scaleEffect(y: 0.8)
                })
            .padding()
            .background(Circle().fill(lightGreen))
            .padding()
    }
}
struct LastRowOfSplashView: View{
var body: some View{
    HStack{
        ArrowInCircle()
        Spacer()
    }
}
}

/*struct BackgroundOfSplashView: View{
    var body: some View{
        GeometryReader { geometry in
            Circle()
                .fill(lightPurple)
                .scaleEffect(2)
                .offset(y: -geometry.size.height*0.3)
           
        }
    }
}
*/
struct TopRowofSpalashView: View{
    var body: some View{
        HStack{
            Image(systemName: "line.3.horizontal")
                .imageScale(.large)
                .fontWeight(.bold)
            Spacer()
        }.padding()
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
