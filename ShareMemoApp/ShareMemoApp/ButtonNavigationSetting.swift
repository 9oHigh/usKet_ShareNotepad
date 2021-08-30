//
//  MainPageNavigationLink.swift
//  ShareMemoApp
//
//  Created by 이경후 on 2021/08/29.
//

import SwiftUI


struct ButtonNavigationLink : View {
    
    @Binding var isNavigationBarHidden : Bool
    
    var body: some View{
        VStack(alignment: .center, spacing: 15){
            List{
                
                Text("다크모드")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.stringColor)
                
                Text("대표 폰트 설정")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.stringColor)
                
                Text("대표 메모지 설정")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.stringColor)
                
                Image(systemName: "person.circle")
                    .font(.system(size: 30))
                Text("마이네임")
                List{
                    Text("결제정보")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.stringColor)
                    
                    Text("공지사항")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.stringColor)
                    
                    Text("친구 초대")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.stringColor)
                    
                    Text("어플리케이션 공유")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.stringColor)
                }
            }
        }
    }
}

struct ButtonNavigationSetting_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
