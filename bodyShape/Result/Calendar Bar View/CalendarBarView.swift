
import SwiftUI

struct DailyDataModel: Identifiable{
    let id = UUID()
    let day: String
    let percenttage: CGFloat
    let amount: Int
}

struct CalendarBarView: View {
    let selectedDay = "Thu"
    let dailyData: [DailyDataModel]
    
    let height: CGFloat
    let offsetY: CGFloat
    let seclectedWeight: Int
    let selectWeightUnits:String = "lb"
    let selectedDim = 70.0
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .stroke(style: StrokeStyle(lineWidth: 0.2, lineCap: .square , dash: [1,5]))
                    .frame(height: 1)
                
                HStack (alignment: .bottom){
                    ForEach(dailyData) { data in
                        VertivalDotBar(percent: data.percenttage,
                                       isSelected: data.day == selectedDay,
                                       height: height,
                                       
                                       offsetY: offsetY,
                                       selectedWeight: data.amount)
                        .frame(maxWidth: .infinity)
                    }
                }
                .offset(y: 100 / 2 - 45)
             
            }
            HStack (alignment: .bottom){
                ForEach(dailyData) { data in
                    VStack {
                        Text(data.day)
                        .frame(maxWidth: .infinity)
                        
                        Text("\(data.amount,specifier: "%0.2d")")
                        .frame(maxWidth: .infinity)
                    }
                    .fontWeight(data.day == selectedDay ? .bold : .regular)
                }
            }

        }
    }
    
    struct CalendarBarView_Previews: PreviewProvider {
        static var previews: some View {
            CalendarBarView(dailyData: [.init(day: "Mon",
                                              percenttage: 0.6,
                                              amount: 1),
                                        .init(day: "Tue",
                                              percenttage: 0.3,
                                              amount: 5),
                                        .init(day: "Wed",
                                              percenttage: 0.6,
                                              amount: 1),
                                        .init(day: "Thu",
                                              percenttage: 0.9,
                                              amount: 12),
                                        .init(day: "Fri",
                                              percenttage: 0.3,
                                              amount: 15)],
                            height: 100,
                            offsetY: -5,
                            seclectedWeight: 13)
        }
    }
}
