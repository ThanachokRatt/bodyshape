//
//  VertivalDotBar.swift
//  bodyShape
//
//  Created by Schweppe on 5/6/2566 BE.
//

import SwiftUI

struct VertivalDotBar: View {
    let percent: CGFloat
    let isSelected: Bool
    let height: CGFloat
  
    let delta = 10.0
   
    let offsetY: CGFloat
    let selectedWeight: Int
    var selectedWeightUnits: String = "lb"
    let circleDim = 8.0
    var body: some View {
        
        VStack (spacing: 0){
            if isSelected {
                
                HStack (spacing: 3){
                    Text("\(selectedWeight)")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(selectedWeightUnits)")
                    
                }
                .padding(.vertical, 30)
               // .frame(width: 70, height: 70)
               

            }
            ZStack(alignment: .bottom){
                Rectangle()
                    .stroke(lineWidth: 0.5)
                    .frame(width:1, height: height)
                //circle + highlight
                ZStack{
                    if isSelected{
                        Circle().fill(lightGreen)
                            .frame(width: circleDim+delta, height: circleDim+delta)
                            .offset(y: -(height - circleDim) * percent)
                            .offset(y: offsetY)
                    }
                    
                    Circle()
                        .frame(width: circleDim, height: circleDim)
                       .offset(y: -(height - circleDim) * percent)
                       .offset(y: offsetY)
                }
            }
               
        } 
        }
    }


struct VertivalDotBar_Previews: PreviewProvider {
    static var previews: some View {
        HStack (alignment: .bottom){
            VertivalDotBar(percent: 0.6,
                           isSelected: false,
                           height: 100,
                          
                           offsetY: -5,
                           selectedWeight: 12)
            .padding()
            VertivalDotBar(percent: 0.9,
                           isSelected: true,
                           height: 100,
                         
                           offsetY: -5,
                           selectedWeight: 12)
            .padding()
        }
    }
}
