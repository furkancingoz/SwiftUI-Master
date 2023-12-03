//
//  ButtonView.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 3.12.2023.
//

import SwiftUI
import HighlightSwift

struct ButtonView: View {
  @State private var isExpanded = false
  let helloText : String = """
Button("Default Button") {
// actions button
}.buttonStyle(.automatic)
.padding()

Button("Bordered Button") {
// actions button
}.buttonStyle(.bordered)
.padding()

Button("Bordered Prominent Button") {
// actions button
}.buttonStyle(.borderedProminent)
.foregroundColor(.black)
.padding()

Button("Borderless Button") {
// actions button
}.buttonStyle(.borderless)
.padding()

Button("Plain Button") {
// actions button
}.buttonStyle(.plain)
.padding()

Button("Useage Tint Color Effect Button") {
// actions button
}.buttonStyle(.automatic)
.tint(.purple)
.padding()

Button("Useage Tint Color Effect and Control size mini Button") {
// actions button
}.buttonStyle(.automatic)
.tint(.green)
.controlSize(.mini)
.padding()

Button("Disable button") {
// actions button
}.buttonStyle(.automatic)
.disabled(true)
.controlSize(.mini)
.padding()

Button("Button use border shape") {
// actions button
}.buttonStyle(.bordered)
.buttonBorderShape(.capsule)
.tint(.blue)
.padding()

Button("Button use border shape rectangle") {
// actions button
}.buttonStyle(.bordered)
.buttonBorderShape(.roundedRectangle)
.tint(.green)
.padding()

Button {
//action
} label: {
Label("Custom Button",systemImage: "person")
}
buttonStyle(.bordered)
.tint(.red)
.controlSize(.large)

"""
  var body: some View {
    NavigationView {
      ScrollView {

        VStack{
          Button("Default Button") {
            // actions button
          }.buttonStyle(.automatic)
            .padding()

          Button("Bordered Button") {
            // actions button
          }.buttonStyle(.bordered)
            .padding()

          Button("Bordered Prominent Button") {
            // actions button
          }.buttonStyle(.borderedProminent)
            .foregroundColor(.black)
            .padding()

          Button("Borderless Button") {
            // actions button
          }.buttonStyle(.borderless)
            .padding()

          Button("Plain Button") {
            // actions button
          }.buttonStyle(.plain)
            .padding()

          Button("Useage Tint Color Effect Button") {
            // actions button
          }.buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .tint(.gray)
            .padding()

          Button("Useage Tint Color Effect and Control size mini Button") {
            // actions button
          }.buttonStyle(.automatic)
            .tint(.red)
            .controlSize(.mini)
            .padding()

          Button("Disable button") {
            // actions button
          }.buttonStyle(.automatic)
            .disabled(true)
            .controlSize(.large)
            .padding()

          Button("Button use border shape") {
            // actions button
          }.buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .tint(.yellow)
            .padding()

          Button("Button use border shape rectangle") {
            // actions button
          }.buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            .tint(.orange)
            .padding()

          Button {
            //action
          } label: {
            Label("Custom Button",systemImage: "person")
          }
          .buttonStyle(.bordered)
          .tint(.red)
          .controlSize(.large)

          DisclosureGroup("Show Code", isExpanded: $isExpanded) {
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
                  .stroke(backgroundGradient, lineWidth: 2) // Beyaz border ekleniyor
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

        }

      }
      .navigationTitle("Button")
      .background(
        backgroundGradient.ignoresSafeArea(.all)
      )

    }.background(Color.clear)
      .scrollContentBackground(.hidden)
      .edgesIgnoringSafeArea(.all)
  }
}

#Preview {
  ButtonView()
}
