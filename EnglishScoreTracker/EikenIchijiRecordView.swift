//
//  EikenIchijiRecordView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/03.
//

import SwiftUI

struct EikenIchijiRecordView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        HStack {
            Text("受験日を選択: \(selectedDate, formatter: dateFormatter)")
                .padding()
            DatePicker("日付を選択", selection: $selectedDate, displayedComponents: [.date])
                .datePickerStyle(WheelDatePickerStyle())
                .frame(maxWidth: 150)
            
        }
        Spacer()
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
