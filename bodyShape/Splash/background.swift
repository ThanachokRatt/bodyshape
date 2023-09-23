//
//  background.swift
//  bodyShape
//
//  Created by Schweppe on 27/8/2566 BE.
//

import SwiftUI

struct background: View {
    @ObservedObject public var viewModel: BackgroundViewModel
    
    

    var body: some View{
        GeometryReader { geometry in
            Circle()
                .fill(viewModel.backg.color)
                .scaleEffect(2)
                .offset(y: -geometry.size.height*0.4)
            
           
        }
    }
}

struct background_Previews: PreviewProvider {
    static var previews: some View {
        background(viewModel: BackgroundViewModel(backg: .lightPurple))
    }
}
