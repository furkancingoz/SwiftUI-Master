//
//  TabViewExample.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import SwiftUI
import HighlightSwift

struct TabViewExample: View {
  @State private var isExpandedDefault = true
  @State private var isExpandedPage = true
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
      ZStack {
        List {

          //MARK: - QUICK
          DisclosureGroup("Default", isExpanded: $isExpandedDefault) {
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
            .frame(height: 600)

            CodeText(defaultView)
              .codeTextLanguage(.swift)
              .padding()

          } .listRowBackground(Color.black)
            .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
            .foregroundColor(.white) // Metin rengi
            .padding()
            .background(Color.black) // Arka plan rengi
            .cornerRadius(10)


          DisclosureGroup("Page Style", isExpanded: $isExpandedPage) {

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
            .frame(height: 600)
            CodeText(pagestyleView)
              .codeTextLanguage(.swift)
              .padding()

          }.listRowBackground(Color.black)
            .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
            .foregroundColor(.white) // Metin rengi
            .padding()
            .background(Color.black) // Arka plan rengi
            .cornerRadius(10)

        }
        .navigationTitle("Tab View")
        .background(
          backgroundGradient2.ignoresSafeArea(.all)
          )
      }.background(Color.clear)
    }
    .scrollContentBackground(.hidden)
    .edgesIgnoringSafeArea(.all)
  }
}

#Preview {
    TabViewExample()
}
