//
//  SelectConfirmView.swift
//  EnglishScoreTracker
//
//  Created by 仲優樹 on 2024/11/06.
//

import SwiftUI

struct SelectConfirmView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    NavigationLink(destination: EikenIchijiChartView()) {
                        ZStack {
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 200, height: 200)
                            
                            Text("英検一次")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    NavigationLink(destination: Text("英検二次の詳細")) {
                        ZStack {
                            Rectangle()
                                .fill(Color.orange)
                                .frame(width: 200, height: 200)
                            
                            Text("英検二次")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                }
                HStack {
                    NavigationLink(destination: Text("TOEICの詳細")) {
                        ZStack {
                            Rectangle()
                                .fill(Color.yellow)
                                .frame(width: 200, height: 200)
                            
                            Text("TOEIC")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    NavigationLink(destination: Text("TOEIC SWの詳細")) {
                        ZStack {
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: 200, height: 200)
                            
                            Text("TOEIC SW")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                }
                HStack {
                    NavigationLink(destination: Text("TOEFL iBTの詳細")) {
                        ZStack {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 200, height: 200)
                            
                            Text("TOEFL iBT")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    NavigationLink(destination: Text("IELTSの詳細")) {
                        ZStack {
                            Rectangle()
                                .fill(Color.purple)
                                .frame(width: 200, height: 200)
                            
                            Text("IELTS")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SelectConfirmView()
}

