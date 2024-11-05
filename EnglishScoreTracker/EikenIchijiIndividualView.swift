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
                    .padding(16)
                Spacer()
                Text("2024年11月3日")
            }
            HStack {
                Text("受験級")
                    .padding(16)
                Spacer()
                Text("準一級")
            }
            HStack {
                Text("スコア")
                    .padding(16)
                Spacer()
            }
            HStack {
                Text("Reading")
                    .padding(.leading, 32)
                Spacer()
                Text("850")
            }
            HStack {
                Text("Listening")
                    .padding(.leading, 32)
                Spacer()
                Text("850")
            }
            HStack {
                Text("Writing")
                    .padding(.leading, 32)
                Spacer()
                Text("850")
            }
            HStack {
                Text("Speaking")
                    .padding(.leading, 32)
                Spacer()
                Text("850")
            }
            HStack {
                Text("Memo")
                    .padding(16)
                Spacer()
                Text("The topic of Writing was so difficult.")
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
