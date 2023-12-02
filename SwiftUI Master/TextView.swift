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
.padding()

Text("Hello Large Title")
.font(.largeTitle)

Text("Hello Caption")
.font(.caption)
"""
  var body: some View {

    NavigationView {
      ScrollView {

          VStack{

            //MARK: - QUICK
              Text("Hello")
                .font(.title2)
                .font(.system(size: 38))
                .font(.system(size: 25, design: .rounded))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()

              Text("Hello Large Title")
                .padding()
                .font(.largeTitle)
              Text("Hello Caption")
                .padding()
                .font(.caption)
          }

              DisclosureGroup("Show Code", isExpanded: $isExpanded2) {
              CodeText(helloText)
                .codeTextLanguage(.swift)
                .padding()
                HStack {
                  Button(action: {
                    UIPasteboard.general.string = helloText
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
                      .stroke(backgroundGradient4, lineWidth: 2) // Beyaz border ekleniyor
                  )

              }
            }
.listRowBackground(Color.black)
           .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
           .foregroundColor(.white) // Metin rengi
           .padding()
           .background(Color.black) // Arka plan rengi
           .cornerRadius(10)
           .padding(.leading, 20) // Sadece sola özel boşluk ekler
          .padding(.trailing, 20) // Sadece sağa özel boşluk ekler



          DisclosureGroup("Font List", isExpanded: $isExpanded) {
            Text(fontList)
              .padding()
              .background(Color.black.opacity(0.2))
              .cornerRadius(10)
          }
          .listRowBackground(Color.black)
          .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
          .foregroundColor(.white) // Metin rengi
          .padding()
          .background(Color.black) // Arka plan rengi
          .cornerRadius(10)
          .padding(.leading, 20) // Sadece sola özel boşluk ekler
            .padding(.trailing, 20) // Sadece sağa özel boşluk ekler
        }
        .navigationTitle("Text View")
        .background(
          backgroundGradient.ignoresSafeArea(.all)
        )

      } .background(Color.clear)
      .scrollContentBackground(.hidden)
      .edgesIgnoringSafeArea(.all)
    }



  }

#Preview {
  TextView()
}

