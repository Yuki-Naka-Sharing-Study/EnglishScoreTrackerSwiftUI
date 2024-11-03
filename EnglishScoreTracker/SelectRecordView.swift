//
//  RecordView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/02.
//

import SwiftUI

struct SelectRecordView: View {
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                
                Text("英検一次")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            ZStack {
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 200, height: 200)
                
                Text("英検二次")
                    .foregroundColor(.white)
                    .font(.headline)
            }
        }
    }
}

#Preview {
    SelectRecordView()
}
