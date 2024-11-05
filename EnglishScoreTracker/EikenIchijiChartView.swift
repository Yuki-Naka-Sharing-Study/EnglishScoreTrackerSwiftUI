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
    
    var body: some View {
        // 以下、記録無しの場合
//        ContentUnavailableView(
//            "記録無し",
//            systemImage: "pencil",
//            description: Text("まだ何も記録されていません。")
//        )
        
        // 以下、記録ありの場合
        Chart(data) {
            LineMark(
                x: .value("Schedule", $0.schedule),
                y: .value("Score", $0.score)
            )
            .foregroundStyle(by: .value("TypeOfSkill", $0.typeOfSkill))
        }
        .padding()
        .dynamicTypeSize(.xxLarge)
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
            EikenIchijiInfo(schedule: "2023/6/4", score: 677, typeOfSkill: "Reading"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 690, typeOfSkill: "Reading"),
            EikenIchijiInfo(schedule: "2024/1/21", score: 751, typeOfSkill: "Reading"),
            
            // Listining
            EikenIchijiInfo(schedule: "2023/6/4", score: 616, typeOfSkill: "Listining"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 642, typeOfSkill: "Listining"),
            EikenIchijiInfo(schedule: "2024/1/21", score: 623, typeOfSkill: "Listining"),
            
            // Writiing
            EikenIchijiInfo(schedule: "2023/6/4", score: 620, typeOfSkill: "Writing"),
            EikenIchijiInfo(schedule: "2023/10/8", score: 669, typeOfSkill: "Writing"),
            EikenIchijiInfo(schedule: "2024/1/21", score: 713, typeOfSkill: "Writing"),
        ]
    }
}
