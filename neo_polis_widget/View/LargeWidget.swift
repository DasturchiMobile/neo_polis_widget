//
//  SmallWidget.swift
//  neo_polis_widget
//
//  Created by Azizbek Asqaraliyev on 03/12/24.
//

import SwiftUI

struct LargeWidget: View {
    let polises : [PolisItemModel]
    var body: some View {
        ScrollView{
            ForEach(0..<polises.count){
                index in
                ZStack {
                    VStack{
                        HStack(){
                            Image(polises[index].imageUrl)
                                    .resizable()
                                    .cornerRadius(12)
                                    .frame(width: 48, height: 48)
                                Spacer().frame(width: 16)
                            VStack(alignment: .leading){
                                Text(polises[index].title)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color(UIColor(red: 0.17, green: 0.22, blue: 0.33, alpha: 1.00)))
                                Spacer().frame(height: 4)
                                
                                Text(polises[index].polisId)
                                    .fontWeight(.medium)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color(UIColor(red: 0.25, green: 0.31, blue: 0.44, alpha: 1.00)))
                                Spacer().frame(height: 4)
                                Text("Осталось:")
                                    .fontWeight(.regular)
                                    .font(.system(size: 15))
                                    
                                + Text("\(polises[index].leftDay)")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color(UIColor(red: 0.25, green: 0.31, blue: 0.44, alpha: 1.00)))
                                ProgressView(value: 0.5).frame(maxWidth: .infinity)
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
    }
}

struct LargeWidget_Previews : PreviewProvider {
    static var previews: some View {
        LargeWidget(polises: [])
    }
}
