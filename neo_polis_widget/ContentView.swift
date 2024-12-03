//
//  ContentView.swift
//  neo_polis_widget
//
//  Created by Azizbek Asqaraliyev on 03/12/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var polisViewModel : PolisViewModel
    let widgetType : Int
    var body: some View {
        if(polisViewModel.polises.isEmpty){
            Text("Bu yerda sizning polislaringiz \nko'rinishi mumkin edi! ☹️")
                .multilineTextAlignment(.center)
            Spacer().frame(maxHeight: 10)
            Button("sotib olish", action: {
                polisViewModel.fetchData()
            })
        }else {
            VStack {
                switch widgetType {
                case 0 :
                    SmallWidget()
                case 1:
                    MediumWidget(polisData: polisViewModel.polises.randomElement()!)
                case 2:
                    LargeWidget(polises: polisViewModel.polises)
                default:
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView(widgetType: 0)
        .environmentObject(PolisViewModel())
}

#Preview {
    ContentView(widgetType: 1)
        .environmentObject(PolisViewModel())
}
#Preview {
    ContentView(widgetType: 2)
        .environmentObject(PolisViewModel())
}
