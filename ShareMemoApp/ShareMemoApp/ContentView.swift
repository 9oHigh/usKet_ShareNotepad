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

struct ContentView: View {
    
    @State var animate = false
    @State var endSplash = false
    
    var body: some View {
        
        ZStack{
            MainPage(navigateTo: .newPad)
            
            Color(animate ? .clear : .white)
            
            ZStack{
                Image("logo")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: animate ? .fill : .fit)
                    .frame(width: animate ? nil :330, height: animate ? nil :330)
                    // Scaling View
                    .scaleEffect(animate ? 3 : 1 )
                    // Setting width to avoid over size
                    .frame(width: UIScreen.main.bounds.width )
                    // Hiding View after finished
                    .opacity(endSplash ? 0 : 1)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform:animateSplash)
        
    }
    
    func animateSplash(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
            withAnimation(Animation.easeOut(duration: 0.45)){
                animate.toggle()
            }
            withAnimation(Animation.easeOut(duration: 0.45)){
                endSplash.toggle()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
