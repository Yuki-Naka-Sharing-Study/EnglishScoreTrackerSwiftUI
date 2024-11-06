//
//  ContentView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection:$selection) {
            SelectConfirmView()
                .tabItem {
                    Label("記録確認", systemImage: "magnifyingglass")
                }
                .tag(1)
            
            RecordView()
                .tabItem {
                    Label("記録する", systemImage: "pencil")
                }
                .tag(2)
            
            SettingView()
                .tabItem {
                    Label("設定", systemImage: "gearshape")
                }
                .tag(3)
        }
    }
}

#Preview {
    ContentView()
}
