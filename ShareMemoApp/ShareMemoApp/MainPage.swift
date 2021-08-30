//
//  MainPage.swift
//  ShareMemoApp
//
//  Created by 이경후 on 2021/08/28.
//
import SwiftUI

// (+)버튼 클릭시, CASE: 네비게이션 링크
enum NavigationViewType {
    case newPad,setting
}

struct MainPage : View {
    
    @State var isNavigationBarHidden: Bool = true
    @State var navigateTo : NavigationViewType
    @State var isActive = false
    
    var body: some View{
        //Plus Button -> NavigationLink
        NavigationView{
            GeometryReader{ display in
                ZStack(alignment:.bottomTrailing){
                    // temporary rect
                    VStack(alignment: .leading){
                        
                        ScrollView{
                            VStack(alignment:.leading, spacing: 10){
                                HStack(spacing: 30){
                                    VStack{
                                    Rectangle()
                                        .opacity(0.5)
                                        .foregroundColor(.iconColor)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(20)
                                        Text("나의 일기")
                                            .font(.footnote)
                                    }
                                    VStack{
                                    Rectangle()
                                        .opacity(0.5)
                                        .foregroundColor(.iconColor)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(20)
                                        Text("군산여행")
                                            .font(.footnote)
                                    }
                                    VStack{
                                    Rectangle()
                                        .opacity(0.5)
                                        .foregroundColor(.iconColor)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(20)
                                        Text("2박3일 제주도여행")
                                            .font(.footnote)
                                    }
                                }
                                HStack(spacing: 30){
                                    VStack{
                                    Rectangle()
                                        .opacity(0.5)
                                        .foregroundColor(.iconColor)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(20)
                                        Text("공유일기")
                                            .font(.footnote)
                                    }
                                    VStack{
                                    Rectangle()
                                        .opacity(0.5)
                                        .foregroundColor(.iconColor)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(20)
                                        Text("우리의 플레이리스트")
                                            .font(.footnote)
                                    }
                                }
                            }
                        }
                        
                    }//Vstack
                    .padding(.horizontal)
                    
                    //Add new notepad or setting
                    Menu(content: {
                        
                        Button(action:{
                            self.navigateTo = .newPad
                            self.isActive = true
                        }){
                            Text("새로운 메모")
                            Image(systemName: "note.text.badge.plus")
                        }
                        
                        Button(action:{
                            self.navigateTo = .setting
                            self.isActive = true
                        }){
                            Text("환경설정")
                            Image(systemName: "gear")
                        }
                        
                    })
                    {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 40))
                            .foregroundColor(.iconColor)
                            .padding([.top,.trailing],30)
                    }
                    .background(
                        NavigationLink(destination: loadView() ,isActive: $isActive){
                            EmptyView()
                        }
                    )
                    
                }
                .frame(width: display.size.width, height: display.size.height, alignment: .center)
                //NavigationBar or none...
                .navigationTitle(Text("Us notepad"))
                //.navigationBarHidden(self.isNavigationBarHidden)
                .navigationBarBackButtonHidden(true)
            }
        }//Navigation
        .edgesIgnoringSafeArea([.top,.bottom])
    }
    //NavigationLink -> View
    func loadView() -> AnyView {
        
        switch navigateTo {
        case .newPad:
            return AnyView(ButtonNavigationNewPad())
        case .setting:
            return AnyView(ButtonNavigationSetting())
            
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage(navigateTo: .newPad)
    }
}
