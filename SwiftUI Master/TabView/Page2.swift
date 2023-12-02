//
//  Page2.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import SwiftUI

struct Page2: View {
    var body: some View {
      ZStack{
        RoundedRectangle(cornerRadius: 30)
          .frame(width: 700,height: 700)
          .foregroundColor(Color.brown)
        Text("Settings Screen")
          .font(.largeTitle)
          .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
          .foregroundStyle(.white)

      }
    }
}

#Preview {
    Page2()
}
