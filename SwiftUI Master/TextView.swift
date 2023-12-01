//
//  TextView.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import SwiftUI
import HighlightSwift

struct TextView: View {
  @State private var isExpanded = false
  @State private var isExpanded2 = false
  @State private var isExpanded3 = true
  let code: String = """
  Text("This is a text no uses font")
//write here
"""

  let fontList : String = """
.font(.largeTitle) - Büyük başlık boyutu.
.font(.title) - Başlık boyutu.
.font(.headline) - Manşet boyutu.
.font(.subheadline) - Alt başlık boyutu.
.font(.body) - Standart gövde metni boyutu.
.font(.callout) - Çağrı metni boyutu.
.font(.caption) - Altyazı metni boyutu.
.font(.footnote) - Dipnot metni boyutu.

"""


  let helloText : String = """
            Text("Hello")
.font(.title2)
.font(.system(size: 38))
.font(.system(size: 25, design: .rounded))
.fontWeight(.bold)
.multilineTextAlignment(.center)
.lineLimit(2)
"""
  var body: some View {

    NavigationView {
      ZStack {
        List {

          //MARK: - QUICK
          DisclosureGroup("Quick", isExpanded: $isExpanded3) {
            Text("Hello")
              .font(.title2)
              .font(.system(size: 38))
              .font(.system(size: 25, design: .rounded))
              .fontWeight(.bold)
              .multilineTextAlignment(.center)
              .lineLimit(2)
              .padding()
            CodeText(helloText)
              .codeTextLanguage(.swift)
              .padding()

          }

          .listRowBackground(Color.black)
           .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
           .foregroundColor(.white) // Metin rengi
           .padding()
           .background(Color.black) // Arka plan rengi
           .cornerRadius(10)
          //MARK: - EXAMPLE USAGE
          DisclosureGroup("Example usage", isExpanded: $isExpanded2) {


            Text("This is a text no uses font")
              .padding()
            CodeText(code)
              .codeTextLanguage(.swift)
              .padding()
            Text("This is a text that uses .font(.largeTitle)")
              .font(.largeTitle)
            CodeText(".font(.largeTitle)")
              .codeTextLanguage(.swift)

              .padding()

            Text("This is a text that uses .font(.title)")
              .font(.title)
              .padding()
            CodeText(".font(.title)")
              .codeTextLanguage(.swift)
              .padding()

          }  .listRowBackground(Color.black)
            .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
            .foregroundColor(.white) // Metin rengi
            .padding()
            .background(Color.black) // Arka plan rengi
            .cornerRadius(10)


          DisclosureGroup("Font List", isExpanded: $isExpanded) {
            Text(fontList)
              .padding()
              .background(Color.gray.opacity(0.2))
              .cornerRadius(10)
          }
          .listRowBackground(Color.black)
          .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
          .foregroundColor(.white) // Metin rengi
          .padding()
          .background(Color.black) // Arka plan rengi
          .cornerRadius(10)
        }
        .navigationTitle("Text View")
        .background(
          backgroundGradient.ignoresSafeArea(.all)
        )

      } .background(Color.clear)
    }

    .scrollContentBackground(.hidden)
    .edgesIgnoringSafeArea(.all)
  }
}
#Preview {
  ContentView()
}
#Preview {
    TextView()
}
