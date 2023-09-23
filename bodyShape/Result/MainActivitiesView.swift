import SwiftUI

struct MainActivitiesView: View {
    let activities: [Activity]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                ForEach(activities) { activity in
                    CurrentActivitiesView(activity:activity)
                }
            }.padding()
        }
    }
}


struct Activity: Identifiable {
    let id = UUID()
    let dim: CGFloat
    let activityName: String
    let activityImage: String
}

struct MainActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
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
    }
}
