//
//  MainPage.swift
//  ShareMemoApp
//
//  Created by 이경후 on 2021/08/28.
//
import SwiftUI


struct MainPage : View {
    @State var isNavigationBarHidden: Bool = true
    
    var body: some View{
        
        NavigationView{
            
            GeometryReader{ display in
                ZStack(alignment:.bottomTrailing){
                    
                    VStack(alignment: .leading,spacing: 0){
                        
                        ScrollView{
                            
                        }
                        
                    }//Vstack
                    
                    //모든 네비게이션 링크에는 다음이 주어져야함 (상단의 공백을 제거하기 위해서)
                    //NavigationLink(destination: NavigationLink(isNavigationBarHidden: self.$isNavigationBarHidden)){
                    Menu(content: {
                        
                    })
                    {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 40))
                            .foregroundColor(.iconColor)
                            .padding(30)
                    }
                    
                }
                .frame(width: display.size.width, height: display.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            .navigationBarHidden(self.isNavigationBarHidden)
            .edgesIgnoringSafeArea([.top,.bottom])
            
        }//Navigation
        
    }
    
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
