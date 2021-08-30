//
//  ContentView.swift
//  ShareMemoApp
//
//  Created by 이경후 on 2021/08/28.
//


/*
 초기점검 (2021. 8.29)
 1. 로고버튼을 홈버튼으로 사용하기
 2. 네비게이션부인 설정에 유저의 정보와 함께 환경설정 표시
 3. 새로운 노트는 화면의 새로운 Plus버튼(메모지 모양)을 만들어 활용하기
 4. 홈화면은 스크롤뷰로 사용
 */


import SwiftUI
import Foundation

struct ContentView: View {
    
    @State private var isLoading  : Bool = false
    
    var body: some View {
        
        ZStack{
            
            MainPage()
            
            if isLoading{
                ZStack{
                    LoadingPage()
                    
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint:.iconColor))
                        .offset(y: 30)
                    
                }
            }
        }
        .onAppear{
            startFakeNetworkCallPage()
        }
    }
    
    func startFakeNetworkCallPage(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
