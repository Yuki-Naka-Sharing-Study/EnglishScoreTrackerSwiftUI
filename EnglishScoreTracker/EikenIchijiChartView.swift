//
//  EikenIchijiChartView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/03.
//

import SwiftUI

struct EikenIchijiChartView: View {
    var body: some View {
        ContentUnavailableView(
            "記録無し",
            systemImage: "pencil",
            description: Text("まだ何も記録されていません。")
        )
    }
}

#Preview {
    EikenIchijiChartView()
}
