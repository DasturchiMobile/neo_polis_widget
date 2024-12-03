//
//  SmallWidget.swift
//  neo_polis_widget
//
//  Created by Azizbek Asqaraliyev on 03/12/24.
//

import SwiftUI

struct SmallWidget: View {
    var body: some View {
        ZStack {
                VStack(alignment: .leading){
                    Image("img")
                        .resizable()
                        .cornerRadius(12)
                        .frame(width: 48, height: 48)
                    Spacer().frame(height: 16)
                    Text("KASKO")
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                        .foregroundColor(Color(UIColor(red: 0.17, green: 0.22, blue: 0.33, alpha: 1.00)))
                    Spacer().frame(height: 4)
                    Text("Осталось:")
                        .fontWeight(.regular)
                        .font(.system(size: 15))
                        .foregroundColor(Color(UIColor(red: 0.25, green: 0.31, blue: 0.44, alpha: 1.00)))
                    + Text(" 100 д")
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                        .foregroundColor(Color(UIColor(red: 0.25, green: 0.31, blue: 0.44, alpha: 1.00)))
                    
                    ProgressView(value: 0.5).frame(maxWidth: 200)
                }.frame(maxHeight: 200)
             .padding(16)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 10,x: 10, y: 10)
        }
    }
}

struct SmallWidget_Previews : PreviewProvider {
    static var previews: some View {
        SmallWidget()
    }
}
