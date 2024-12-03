//
//  SmallWidget.swift
//  neo_polis_widget
//
//  Created by Azizbek Asqaraliyev on 03/12/24.
//

import SwiftUI

struct MediumWidget: View {
    let polisData : PolisItemModel
    var body: some View {
        ZStack {
            VStack{
                HStack(){
                    Image(polisData.imageUrl)
                            .resizable()
                            .cornerRadius(12)
                            .frame(width: 48, height: 48)
                        Spacer().frame(width: 16)
                    VStack(alignment: .leading){
                        Text(polisData.title)
                            .fontWeight(.semibold)
                            .font(.system(size: 15))
                            .foregroundColor(Color(UIColor(red: 0.17, green: 0.22, blue: 0.33, alpha: 1.00)))
                        Spacer().frame(height: 4)
                        
                        Text(polisData.polisId)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .foregroundColor(Color(UIColor(red: 0.25, green: 0.31, blue: 0.44, alpha: 1.00)))
                        Spacer().frame(height: 4)
                        Text("Осталось:")
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                            
                        + Text("\(polisData.leftDay)")
                            .fontWeight(.semibold)
                            .font(.system(size: 15))
                            .foregroundColor(Color(UIColor(red: 0.25, green: 0.31, blue: 0.44, alpha: 1.00)))
                        ProgressView(value: (Double(polisData.leftDay) / 365.0)).frame(maxWidth: .infinity)
                        }
                    }
            }.padding(16)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 10,x: 10, y: 10)
        }
        .frame(maxWidth: .infinity)
    }
}

struct MediumWidget_Previews : PreviewProvider {
    static var previews: some View {
        MediumWidget(polisData: PolisItemModel(title: "Kasko", imageUrl: "img", polisId: "EVS 121212", leftDay: 12))
    }
}
