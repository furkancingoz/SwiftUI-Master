//
//  ContentView.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

//
//  ContentView.swift
//  SwiftUIMasterclass
//
//  Created by Furkan Cingöz on 27.11.2023.
//

import SwiftUI


enum ContentViewType: String, CaseIterable {
    case tabView = "Tab View"
    case textView = "Text View"
    case textFieldView = "Text Field View"
  case urlView = "Url Link"
  case buttonView = "Button"

    @ViewBuilder
    func view() -> some View {
        switch self {
        case .textView:
            TextView()
        case .tabView:
            TabViewExample()
        case .textFieldView:
            TextFieldView()
        case .urlView:
          UrlLink()
        case .buttonView:
          ButtonView()
        }
    }
}


struct ContentView: View {


  var body: some View {
    NavigationView {
      List {
        Section(header: Text("Content")) {
          ForEach(ContentViewType.allCases, id: \.self) { viewType in
                                NavigationLink(destination: viewType.view()) {
                                    Text(viewType.rawValue)
            }
          }
          // Diğer elemanlar için de benzer şekilde ekleme yapabilirsin
        }

        Section(header: Text("DESIGN")) {
          NavigationLink(destination: Text("Color Details")) {
            Text("Color")
          }
          NavigationLink(destination: Text("Gradient Details")) {
            Text("Gradient")
          }
        }

        Section(header: Text("SYSTEM")) {
          NavigationLink(destination: Text("Detect OS Version Details")) {
            Text("Detect OS version")
          }
          // Ve daha fazlası...
        }
      }
      .navigationTitle("SwiftUI Masterclass")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}


#Preview {
  ContentView()
}
