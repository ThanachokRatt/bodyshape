//
//  ResultsTopRow.swift
//  bodyShape
//
//  Created by Schweppe on 5/6/2566 BE.
//

import SwiftUI

struct ResultsTopRow: View {
    @State var text = "Result"
    var body: some View{
        HStack {
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
        
            Spacer()
            Button(action: {self.text = "Result2"} ){
                Image(systemName: "chevron.forward")
                    .foregroundColor(.gray)
                    .padding()
            }
              
        }
    }
}

struct ResultsTopRow_Previews: PreviewProvider {
    static var previews: some View {
        ResultsTopRow()
            .padding()
    }
}
