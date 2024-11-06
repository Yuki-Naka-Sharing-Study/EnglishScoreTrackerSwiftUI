//
//  EikenIchijiChartView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/03.
//

import SwiftUI
import Charts

struct EikenIchijiChartView: View {
    @State private var data = EikenIchijiInfo.fetchData()
    @State private var selectedYaer = 2
    
    var body: some View {
        NavigationView {
            VStack {
                Text("一級")
                    .bold()
                
                Chart(data) {
                    LineMark(
                        x: .value("Schedule", $0.schedule),
                        y: .value("Score", $0.score)
                    )
                    .foregroundStyle(by: .value("TypeOfSkill", $0.typeOfSkill))
                }
                .padding()
                .dynamicTypeSize(.xxLarge)
                
                Text("受験した年")
                
                Picker("受験した年を選択", selection: $selectedYaer) {
                    Text("2023").tag(1)
                    Text("2024").tag(2)
                    Text("2025").tag(3)
                }
                .pickerStyle(.wheel)
                
                ForEach(data.first(where: { $0.schedule == "2023/10/8" }) != nil ? [data.first(where: { $0.schedule == "2023/10/8" })!] : []) { item in
                    NavigationLink(destination: EikenIchijiIndividualView()) {
                        Text(item.schedule)
                            .foregroundColor(.blue)
                            .padding()
                    }
                }
            }
        }
    }
}

struct EikenIchijiInfo: Identifiable {
    let id = UUID()
    var schedule: String
    var score: Int
    var typeOfSkill: String
    
    static func fetchData() -> [EikenIchijiInfo] {
        [
            // Max Score = 850
            // Reading
            EikenIchijiInfo(schedule: "2023/1/21", score: 677, typeOfSkill: "Reading"),
            EikenIchijiInfo(schedule: "2023/6/4", score: 690, typeOfSkill: "Reading"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 751, typeOfSkill: "Reading"),
            
            // Listening
            EikenIchijiInfo(schedule: "2023/1/21", score: 616, typeOfSkill: "Listening"),
            EikenIchijiInfo(schedule: "2023/6/4", score: 642, typeOfSkill: "Listening"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 623, typeOfSkill: "Listening"),
            
            // Writing
            EikenIchijiInfo(schedule: "2023/1/21", score: 620, typeOfSkill: "Writing"),
            EikenIchijiInfo(schedule: "2023/6/4", score: 669, typeOfSkill: "Writing"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 713, typeOfSkill: "Writing"),
        ]
    }
}

#Preview {
    EikenIchijiChartView()
}
