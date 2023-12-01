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
