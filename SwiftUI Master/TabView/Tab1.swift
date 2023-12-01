//
//  Tab1.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import SwiftUI

struct Tab1: View {
  var body: some View {
    ZStack{
      RoundedRectangle(cornerRadius: 30)
        .frame(width: 600,height: 500)
        .foregroundColor(Color.green)
      Text("Home Screen")
        .font(.largeTitle)
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        .foregroundStyle(.white)
    }
  }
}
#Preview {
    Tab1()
}
