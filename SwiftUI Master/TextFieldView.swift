//
//  TextFieldView.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import SwiftUI
import HighlightSwift

struct TextFieldView: View {
  @State private var isExpanded = false
  @State private var textField : String = ""
  @State private var copy  = """
@State private var textField : String = ""

TextField("Automatic ", text: $textField)
.textFieldStyle(.automatic)
.padding(.bottom,10)

TextField("Plain", text: $textField)
.textFieldStyle(.plain)

TextField("Rounded Border", text: $textField)
.textFieldStyle(.roundedBorder)
//.textFieldStyle(.squareBorder) //  for macOS
"""
  var body: some View {
    NavigationView {
      List{
          VStack{

            TextField("Automatic ", text: $textField)
              .textFieldStyle(.automatic)
              .padding(.bottom,10)
              TextField("Plain", text: $textField)
                .textFieldStyle(.plain)
                .foregroundStyle(.primary)
            TextField("Rounded Border", text: $textField)
              .textFieldStyle(.roundedBorder)
            //.textFieldStyle(.squareBorder) //  for macOS

            VStack(alignment: .center){

              DisclosureGroup("Show Code", isExpanded: $isExpanded) {
                CodeText(copy)
                  .codeTextLanguage(.swift)
                  .padding()
              }


              .listRowBackground(Color.black)
              .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
              .foregroundColor(.white) // Metin rengi
              .padding()
              .background(Color.black) // Arka plan rengi
              .cornerRadius(10)

            }.padding(.leading, 20) // Sadece sola özel boşluk ekler
              .padding(.trailing, 20) // Sadece sağa özel boşluk ekler


                  HStack {

                    Button(action: {
                      UIPasteboard.general.string = copy
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
                        .stroke(backgroundGradient3, lineWidth: 2) // Beyaz border ekleniyor
                    )

                }
          }.navigationTitle("Text Field")
        }
        .padding(.top,250)

        .background(Color.clear)
        .scrollContentBackground(.hidden)
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity,maxHeight: .infinity)
          .background(
            backgroundGradient3.ignoresSafeArea(.all)
        )
    }
  }
}

#Preview {
    TextFieldView()
}
