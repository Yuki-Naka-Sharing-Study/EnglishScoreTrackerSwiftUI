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
            HStack {
                Text("受験日")
                Spacer()
                Text("2024年11月3日")
            }
            HStack {
                Text("受験級")
                Spacer()
                Text("準一級")
            }
            HStack {
                Text("スコア")
                Spacer()
            }
            Spacer()
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
