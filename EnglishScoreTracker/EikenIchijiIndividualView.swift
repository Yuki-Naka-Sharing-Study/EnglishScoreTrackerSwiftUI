//
//  EikenIchijiIndividualView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/03.
//

import SwiftUI

struct EikenIchijiIndividualView: View {
    @State private var isShownAlert = false
    
    var body: some View {
        NavigationStack {
            HStack {
                Spacer()
                Button(action: {
                    isShownAlert = true
                }) {
                    Image(systemName: "trash")
                        .font(.title)
                }
                .alert(isPresented: $isShownAlert) {
                    Alert(
                        title: Text("データを削除しますか？"),
                        primaryButton: .destructive(Text("削除する"), action: {
                            
                        }),
                        secondaryButton: .cancel(Text("キャンセル"))
                    )
                }
                .padding(.trailing, 16)
            }
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
                    .padding(.bottom, 16)
                Spacer()
                Text("850")
            }
            HStack {
                Text("Listening")
                    .padding(.leading, 32)
                    .padding(.bottom, 16)
                Spacer()
                Text("850")
            }
            HStack {
                Text("Writing")
                    .padding(.leading, 32)
                    .padding(.bottom, 16)
                Spacer()
                Text("850")
            }
            HStack {
                Text("Speaking")
                    .padding(.leading, 32)
                    .padding(.bottom, 16)
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
        }
    }
}

#Preview {
    EikenIchijiIndividualView()
}
