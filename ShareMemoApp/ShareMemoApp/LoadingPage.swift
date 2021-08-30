//
//  LoadingPage.swift
//  ShareMemoApp
//
//  Created by 이경후 on 2021/08/30.
//

import SwiftUI

struct LoadingPage: View {
    var body: some View{
        
        GeometryReader{ display in
            ZStack{
                
                Color(.white)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .zIndex(0)
                
                Image("logo")
                    .resizable()
                    .frame(width: display.size.width/3, height: display.size.height/5)
                    .foregroundColor(.iconColor)
                    .offset(y: -display.size.height/15)
                    .zIndex(1)
                
                Spacer()
                
            }
            
        }
        
    }
}

struct LoadingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoadingPage()
    }
}
