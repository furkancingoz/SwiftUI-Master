//
//  UrlLink.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 2.12.2023.
//


import SwiftUI
import SafariServices
import HighlightSwift

public struct UrlLink: View {
  @State private var isExpanded = false
  let copy: String = """
import SwiftUI
import SafariServices

public struct UrlLink: View {
@Environment(\\.openURL) var openUrl    
private var url = URL(string: "https://www.google.com")
public var body: some View {
VStack {
Link(destination: url!) {
HStack {
Text("Link")
}.foregroundColor(Color.primary)
.font(.title)
.fontWeight(.bold)
.font(.system(size: 25, design: .rounded))
}.padding()

Button() {
openUrl(url!)
} label: {
Text("Open Url")
.foregroundColor(Color.primary)
.font(.title)
.fontWeight(.heavy)
}.buttonStyle(.borderless)
 .padding()
"""
  @Environment(\.openURL) var openUrl
  private var url = URL(string: "https://www.google.com")
  public var body: some View {
    ScrollView {

      VStack {

        Link(destination: url!) {

          HStack {
            Text("Link")
          }.foregroundColor(Color.primary)
            .font(.title)
            .fontWeight(.bold)
            .font(.system(size: 25, design: .rounded))
        }.padding()

        Button() {
          openUrl(url!)
        } label: {
          Text("Open Url")
            .foregroundColor(Color.primary)
            .font(.title)
            .fontWeight(.heavy)
        }.buttonStyle(.borderless)
          .padding()

      }
      .padding()
      .padding(.top, 200)
      .padding(.bottom, 15) // Sadece sola özel boşluk ekler


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
                  .stroke(backgroundGradient4, lineWidth: 2) // Beyaz border ekleniyor
              )

          }
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
      .background(
        backgroundGradient4.ignoresSafeArea(.all)
      )
      }
    }


#Preview {
    UrlLink()
}
