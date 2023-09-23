import SwiftUI

struct iconRight: View {
    let imageName: String
    var angle = 0.0
    var body: some View {
        
        HStack {
            Spacer()
            Image(systemName: imageName)
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(angle), axis: (x: 0, y: 0, z: 1))

        }
    }
}

struct iconRight_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            iconRight(imageName: "circle.grid.cross.fill")
            .padding()
            Spacer()
        }
        
        
    }
}
