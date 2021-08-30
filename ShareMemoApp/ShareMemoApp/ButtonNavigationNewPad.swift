//
//  WritePage.swift
//  ShareMemoApp
//
//  Created by 이경후 on 2021/08/29.
//

import SwiftUI


struct ButtonNavigationNewPad : View {
    var body: some View{
        Text("New notepad")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

struct ButtonNavigationNewPad_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNavigationNewPad()
    }
}
