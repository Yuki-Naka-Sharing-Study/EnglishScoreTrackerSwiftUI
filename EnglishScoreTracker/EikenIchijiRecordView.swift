//
//  EikenIchijiRecordView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/03.
//

import SwiftUI

struct EikenIchijiRecordView: View {
    @State private var selectedDate = Date()
    @State private var gradeText: String = ""
    @State private var readingScore: String = ""
    @State private var listeningScore: String = ""
    @State private var writingScore: String = ""
    
    var body: some View {
        VStack{
            HStack {
                Text("受験日を選択: \(selectedDate, formatter: dateFormatter)")
                    .padding()
                DatePicker("日付を選択", selection: $selectedDate, displayedComponents: [.date])
                    .datePickerStyle(WheelDatePickerStyle())
                    .frame(maxWidth: 150)
                
            }
            HStack {
                Text("受験級を選択")
                    .padding(16)
                Spacer()
                TextField("一級", text: $gradeText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
            }
            HStack {
                Text("スコアを記入")
                    .padding(16)
                Spacer()
            }
            HStack {
                Text("Reading")
                    .padding(16)
                Spacer()
                TextField("850", text: $readingScore)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
            }
            HStack {
                Text("Listening")
                    .padding(16)
                Spacer()
                TextField("850", text: $listeningScore)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
            }
            HStack {
                Text("Writing")
                    .padding(16)
                Spacer()
                TextField("850", text: $writingScore)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
            }
            Spacer()
        }
    }
}

private var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        EikenIchijiRecordView()
    }
}

#Preview {
    EikenIchijiRecordView()
}
