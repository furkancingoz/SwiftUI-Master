//
//  Tab2.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import SwiftUI

struct Tab2: View {
    var body: some View {
      ZStack{
        RoundedRectangle(cornerRadius: 20)
          .frame(maxWidth: .infinity,maxHeight: .infinity)
          .foregroundColor(Color.blue)
        Text("Settings Screen")
          .font(.largeTitle)
          .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
          .foregroundStyle(.white)

      }
    }
}

#Preview {
    Tab2()
}
