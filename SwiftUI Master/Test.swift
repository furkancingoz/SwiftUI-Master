//
//  Test.swift
//  SwiftUI Master
//
//  Created by Furkan Cingöz on 1.12.2023.
//

import SwiftUI

struct Test: View {
    @State private var isExpanded = false

    var body: some View {
        NavigationView {
            List {
                DisclosureGroup("Quick Access", isExpanded: $isExpanded) {
                    Text("Rectangle().fill(.blue).stroke(.blue, lineWidth: 1).frame(width: 80, height: 40).padding()")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                .accentColor(.white) // Bu renk seçimi SwiftUI'nin karanlık modunda iyi görünür
                .foregroundColor(.white) // Metin rengi
                .padding()
                .background(Color.black) // Arka plan rengi
                .cornerRadius(10)
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
  Test()
}
