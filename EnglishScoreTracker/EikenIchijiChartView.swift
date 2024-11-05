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
        // 以下、記録無しの場合
//        ContentUnavailableView(
//            "記録無し",
//            systemImage: "pencil",
//            description: Text("まだ何も記録されていません。")
//        )
        
        // 以下、記録ありの場合
        VStack {
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
                /// 選択項目の一覧
                Text("2023").tag(1)
                Text("2024").tag(2)
                Text("2025").tag(3)
            }
            .pickerStyle(.wheel)
        }
        
    }
}

#Preview {
    EikenIchijiChartView()
}

struct EikenIchijiInfo: Identifiable {
    let id = UUID()
    var schedule = ""
    var score = 0
    var typeOfSkill = ""
    
    static func fetchData() -> [EikenIchijiInfo] {
        [
            // Max Score = 850
            // Reading
            EikenIchijiInfo(schedule: "2023/1/21", score: 677, typeOfSkill: "Reading"),
            EikenIchijiInfo(schedule: "2023/6/4", score: 690, typeOfSkill: "Reading"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 751, typeOfSkill: "Reading"),
            
            // Listining
            EikenIchijiInfo(schedule: "2023/1/21", score: 616, typeOfSkill: "Listining"),
            EikenIchijiInfo(schedule: "2023/6/4", score: 642, typeOfSkill: "Listining"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 623, typeOfSkill: "Listining"),
            
            // Writiing
            EikenIchijiInfo(schedule: "2023/1/21", score: 620, typeOfSkill: "Writing"),
            EikenIchijiInfo(schedule: "2023/6/4", score: 669, typeOfSkill: "Writing"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 713, typeOfSkill: "Writing"),
        ]
    }
}
