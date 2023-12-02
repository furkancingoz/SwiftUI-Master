//
//  TabViewExample.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import SwiftUI
import HighlightSwift

struct TabViewExample: View {
  @State private var isExpandedDefault = false
  @State private var isExpandedPage = false
  @State private var selectedTab = 1

  let defaultView: String = """
TabView{
Tab1()
.tabItem {
Image(systemName: "house")
Text("Example 1")
}

Tab2()
.tabItem {
Image(systemName: "gear")
Text("Example 1")
}
}
"""

  let pagestyleView: String = """
TabView{
Page1()
.tabItem {
Image(systemName: "house")
Text("Example 1")
}

Page2()
.tabItem {
Image(systemName: "gear")
Text("Example 1")
}
}
.tabViewStyle(.page)
"""
  var body: some View {
    NavigationView {
      ScrollView {

          VStack{

          //MARK: - QUICK

            VStack {
              TabView{
                  Tab1()
                    .tabItem {
                      Image(systemName: "house")
                      Text("Home")
                    }


                  Tab2()
                    .tabItem {
                      Image(systemName: "gear")
                      Text("Settings")
                    }
                }
              .frame(height: 700)
            }.cornerRadius(20)
              .padding(.top,45)
              .padding()

            DisclosureGroup("Show Code", isExpanded: $isExpandedDefault) {
              CodeText(defaultView)
                .codeTextLanguage(.swift)
                .padding()

              HStack {
                  Spacer() // Sol tarafta boşluk bırakır, böylece buton sağa itilir
                  Button(action: {
                    UIPasteboard.general.string = defaultView
                  }) {
                      Image(systemName: "doc.on.doc")
                          .font(.system(size: 20))
                          .foregroundColor(.white)
                  }
                  .padding(10)
                  .background(Color.black)
                  .clipShape(Circle())
                  .overlay(
                          Circle()
                          .stroke(backgroundGradient2, lineWidth: 2) // Beyaz border ekleniyor
                      )
                  }

            } 

            .listRowBackground(Color.black)
              .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
              .foregroundColor(.white) // Metin rengi
              .padding()
              .background(Color.black) // Arka plan rengi
            .cornerRadius(10)

          }
          .padding(.leading, 20) // Sadece sola özel boşluk ekler
          .padding(.trailing, 20) // Sadece sağa özel boşluk ekler

          VStack {
              TabView{
                Page1()
                  .tabItem {
                    Image(systemName: "house")
                    Text("Example 1")
                  }
                Page2()
                  .tabItem {
                    Image(systemName: "gear")
                    Text("Example 2")
                  }
              }
              .tabViewStyle(.page)
              .frame(height: 700)
              .cornerRadius(20)
              .padding()
            DisclosureGroup("Show Page Style Code", isExpanded: $isExpandedPage) {

                CodeText(pagestyleView)
                  .codeTextLanguage(.swift)
                .padding()

                HStack {
                    Spacer() // Sol tarafta boşluk bırakır, böylece buton sağa itilir
                    Button(action: {
                      UIPasteboard.general.string = pagestyleView
                    }) {
                        Image(systemName: "doc.on.doc")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    }
                    .padding(10)
                    .background(Color.black)
                    .clipShape(Circle())
                    .overlay(
                            Circle()
                            .stroke(backgroundGradient2, lineWidth: 2) // Beyaz border ekleniyor
                        )
                    }



            }.listRowBackground(Color.black)
              .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
              .foregroundColor(.white) // Metin rengi
              .padding()
              .background(Color.black) // Arka plan rengi
            .cornerRadius(10)
          }.padding(.leading, 20) // Sadece sola özel boşluk ekler
          .padding(.trailing, 20) // Sadece sağa özel boşluk ekler
        }
        .navigationTitle("Tab View")
        .background(
          backgroundGradient2.ignoresSafeArea(.all)
          )
      }.scrollContentBackground(.hidden)
      .edgesIgnoringSafeArea(.all)
      .background(Color.clear)
    }


}

#Preview {
    TabViewExample()
}
