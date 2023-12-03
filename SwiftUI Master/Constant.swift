//
//  Constant.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import Foundation
import SwiftUI


//MARK: - FORMATTER
 let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()


//MARK: - UI
var backgroundGradient : AngularGradient {
  return AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .green, .blue, .black, .green]), center: .center)
}
var backgroundGradient2 : AngularGradient {
  return AngularGradient(gradient: Gradient(colors: [.yellow, .red, .black, .yellow, .red, .black, .yellow]), center: .center)
}

var backgroundGradient3 : AngularGradient {
  return AngularGradient(gradient: Gradient(colors: [.red, .orange, .blue, .red, .orange, .blue, .red]), center: .center)
}
var backgroundGradient4 : AngularGradient {
  return AngularGradient(gradient: Gradient(colors: [.purple, .pink, .green, .purple, .pink, .green, .purple]), center: .center)
}
var backgroundGradient5 : AngularGradient {
  return AngularGradient(gradient: Gradient(colors: [.blue, .gray, .white, .blue, .gray, .white, .blue]), center: .center)
}
var backgroundGradient6 : AngularGradient {
  return AngularGradient(gradient: Gradient(colors: [.green, .yellow, .red, .green, .yellow, .red, .green]), center: .center)

}
var backgroundGradient7 : AngularGradient {
  return AngularGradient(gradient: Gradient(colors: [.cyan, .purple, .white, .cyan, .purple, .white, .cyan]), center: .center)
}
var backgroundGradient8 : LinearGradient {
  return LinearGradient(gradient: Gradient(colors: [.brown, .gray, .brown, .black, .gray, .brown, .gray]), startPoint: .topLeading ,endPoint: .bottomTrailing)
}
