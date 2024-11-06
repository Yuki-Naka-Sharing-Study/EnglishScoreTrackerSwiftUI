//
//  EikenIchijiRecordView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/03.
//

import SwiftUI

struct EikenIchijiRecordView: View {
    @State private var selectedDate = Date()
    @State private var selectedGrade = 4
    @State private var readingScore: String = ""
    @State private var listeningScore: String = ""
    @State private var writingScore: String = ""
    @State private var memoText: String = ""
    
    var body: some View {
        VStack{
            VStack {
                Text("受験日を選択: \(selectedDate, formatter: dateFormatter)")
                    .padding(.top, 16)
                Spacer()
                DatePicker("日付を選択", selection: $selectedDate, displayedComponents: [.date])
                    .datePickerStyle(WheelDatePickerStyle())
                    .frame(width: 100, height: 1)
                
            }
            HStack {
                Text("受験級を選択")
                    .padding(.leading, 16)
                Spacer()
                Picker("受験級を選択", selection: $selectedGrade) {
                    Text("5級").tag(1)
                    Text("4級").tag(2)
                    Text("3級").tag(3)
                    Text("準2級").tag(4)
                    Text("2級").tag(5)
                    Text("準1級").tag(6)
                    Text("1級").tag(7)
                }
                .pickerStyle(.wheel)
                .padding(.horizontal, 16)
                
            }
            HStack {
                Text("スコアを記入")
                    .padding(.leading, 16)
                Spacer()
            }
            HStack {
                Text("Reading")
                    .padding(.leading, 32)
                Spacer()
                TextField("850", text: $readingScore)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding(.leading, 22)
                    .padding(.trailing, 16)
                
            }
            HStack {
                Text("Listening")
                    .padding(.leading, 32)
                Spacer()
                TextField("850", text: $listeningScore)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                
            }
            HStack {
                Text("Writing")
                    .padding(.leading, 32)
                Spacer()
                TextField("850", text: $writingScore)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding(.leading, 30)
                    .padding(.trailing, 16)
                
            }
            HStack {
                VStack {
                    Text("Memo")
                        .padding(.leading, 16)
                    Spacer()
                }
                Spacer()
                TextEditor(text: $memoText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(5)
                    .frame(width: 280, height: 150)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16)
                
            }
            Button(action: {
                print("Button tapped!")
            }) {
                Text("記録する")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.bottom, 16)
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
