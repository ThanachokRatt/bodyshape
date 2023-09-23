import SwiftUI

struct DashboardView: View {
    @State private var isPresented = false
    var body: some View {
        VStack {
            
            Button(action: {
                            isPresented = true
                        }) {
                            iconRight(imageName: "circle.grid.cross.fill", angle: 45)
                        }
                        .padding()
            
            VStack (alignment: .leading, spacing: 20){
                WelcomeMessageView(userName: "Emily")
                WeightView(weight: 61.2, weightUnits: "lb")
                
                DataSummaryView(arrow:"arrow.down",calories:"4.560", numberPeople: 2)
                
                Spacer()
                
                ButtonsView()
                
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
            
            Spacer()
        }
        .sheet(isPresented: $isPresented, content: {
                   ResultView()
               }) // Use fullScreenCover for fullscreen
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
