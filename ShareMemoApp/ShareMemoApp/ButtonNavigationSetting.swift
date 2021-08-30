//
//  MainPageNavigationLink.swift
//  ShareMemoApp
//
//  Created by 이경후 on 2021/08/29.
//

import SwiftUI


struct ButtonNavigationSetting : View {
        
    @State var isDarkMode : Bool = false
    
    var body: some View{
        
        VStack(spacing: 20){
            
            Image(systemName: "person.circle")
                .font(.system(size: 100))
            
            Text("9oHigh")
                .foregroundColor(.iconColor)
            
            List{
                
                HStack{
                    Text("다크모드")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.iconColor)
                        // 다크모드 사용하기
                        Toggle(isOn : $isDarkMode){
                            
                        }
                }
                
                Text("대표 폰트 설정")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.iconColor)
                HStack{
                    Text(" [v] 나무")
                        
                    Text(" [ ] 휴먼")
                    
                    Text(" [ ] 자연")
                }
                
                Text("대표 메모지 설정")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.iconColor)
                HStack{
                    Text(" [v] 나무")
                        
                    Text(" [ ] 휴먼")
                    
                    Text(" [ ] 자연")
                }
                Text("공지사항")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.iconColor)
                
                Text("친구 초대")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.iconColor)
                
            }
        }
    }
}

struct ButtonNavigationSetting_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNavigationSetting()
    }
}
