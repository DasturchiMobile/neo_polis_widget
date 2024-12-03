//
//  PolisViewModel.swift
//  neo_polis_widget
//
//  Created by Azizbek Asqaraliyev on 03/12/24.
//

import Foundation

class PolisViewModel : ObservableObject {
    @Published var polises : [PolisItemModel] = []
    
    init() {
        
    }
    
    
    func fetchData() {
        polises.append(
            contentsOf: [
                PolisItemModel(title: "OSAGO", imageUrl: "img", polisId: "ABQ 121212", leftDay: 186),
                PolisItemModel(title: "KASKO", imageUrl: "img", polisId: "LLQ 905121", leftDay: 186),
                PolisItemModel(title: "UY JOY", imageUrl: "img", polisId: "BGF 121212", leftDay: 186),
                PolisItemModel(title: "TRAVEL", imageUrl: "img", polisId: "TTR 530124", leftDay: 186),
                PolisItemModel(title: "ISH JOYI", imageUrl: "img", polisId: "GFA 912011", leftDay: 186)
            ]
        )
    }
}
