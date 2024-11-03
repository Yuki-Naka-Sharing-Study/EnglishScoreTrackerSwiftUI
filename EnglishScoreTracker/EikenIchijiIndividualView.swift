//
//  EikenIchijiIndividualView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/03.
//

import SwiftUI

struct EikenIchijiIndividualView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("")
            }
            .toolbar(content: toolbarContent)
        }
    }
}

@ToolbarContentBuilder
private func toolbarContent() -> some ToolbarContent {
    ToolbarItem(placement: .topBarTrailing) {
        Button(action: {
            print("ゴミ箱ボタンがタップされました")
        }) {
            Image(systemName: "trash")
                .font(.title)
        }
    }
}

#Preview {
    EikenIchijiIndividualView()
}
