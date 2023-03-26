//
//  ContentView.swift
//  TapImpactTest
//
//  Created by yimkeul on 2023/03/27.
//

import SwiftUI

struct ContentView: View {
    let impact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        VStack{
            Button("보통 세기") {
                // 버튼이 탭될 때마다 진동 피드백 실행
                impact.impactOccurred()
            }
            .padding()
            
            Button("가장 세게") {
                // 버튼이 탭될 때마다 진동 피드백 실행
                impact.impactOccurred(intensity: 1.0)
            }
            .padding()
            
            Button("진동없음"){
                
            }.padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
